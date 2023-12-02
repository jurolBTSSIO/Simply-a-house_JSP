package fr.cda.util;


import fr.cda.metier.annonce.AnnonceDaoImpl;
import fr.cda.metier.user.UserDaoImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DaoFactory {
    private String url;
    private String username;
    private String password;

    DaoFactory(String url, String username, String password) {
        this.url = url;
        this.username = username;
        this.password = password;
    }

    public static DaoFactory getInstance() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        DaoFactory instance = new DaoFactory(
                // Connection a base de donnee
                "jdbc:mysql://localhost:3306/soutenance2", "root", "");
        return instance;
    }

    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url, username, password);
    }

    public UserDaoImpl getUserDao() throws SQLException {
        return new UserDaoImpl(this);
    }
    public AnnonceDaoImpl getAnnonceDao() throws SQLException {
        return new AnnonceDaoImpl(this);
    }
}
