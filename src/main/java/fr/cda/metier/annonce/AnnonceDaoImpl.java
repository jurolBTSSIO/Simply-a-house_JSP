package fr.cda.metier.annonce;

import fr.cda.metier.annonce.Annonce;
import fr.cda.metier.annonce.AnnonceDao;
import fr.cda.util.DaoFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AnnonceDaoImpl implements AnnonceDao {
    protected Connection conn;
    public AnnonceDaoImpl(DaoFactory daoFactory) throws SQLException {
        try {
            this.conn = daoFactory.getConnection();
        } catch (SQLException e) {
            throw new SQLException("probleme driver manager ou acces bdd.");
        }

    }

    @Override
    public void add(Annonce annonce) {
        try {
            String sql = "INSERT INTO annonce (type, prix, description, surface, site) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, annonce.getType());
            statement.setDouble(2, annonce.getPrix());
            statement.setString(3, annonce.getDescription());
            statement.setDouble(4, annonce.getSurface());
            statement.setString(4, annonce.getSite());
            statement.executeUpdate();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(Annonce annonce) {
        try {
            String sql = "UPDATE annonce SET type = ?, prix = ?, description = ?, surface = ?, site = ? WHERE id = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, annonce.getType());
            statement.setDouble(2, annonce.getPrix());
            statement.setString(3, annonce.getDescription());
            statement.setDouble(4, annonce.getSurface());
            statement.setString(5, annonce.getSite());
            statement.setInt(6, annonce.getId());
            statement.executeUpdate();
            statement.close();
        } catch (SQLException e) {
            // Handle the exception
            e.printStackTrace();
        }
    }

    @Override
    public Annonce find(int id) {
        try {
            // Requete SQL
            String sql = "SELECT * FROM annonce WHERE id = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setLong(1, id);
            ResultSet resultSet = statement.executeQuery();
            // Je boucle sue le resultat
            if (resultSet.next()) {
                // J'instancie une annonce
                Annonce annonce = new Annonce();

                // Je lui assigne les valeurs de la base de données
                annonce.setId(resultSet.getInt("id"));
                annonce.setType(resultSet.getString("type"));
                annonce.setPrix(resultSet.getDouble("prix"));
                annonce.setDescription(resultSet.getString("description"));
                annonce.setSurface(resultSet.getDouble("surface"));
                annonce.setSite(resultSet.getString("site"));
                return annonce;
            }
        } catch (SQLException e) {

            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Annonce> findAll() {
        List<Annonce> annonceList = new ArrayList<>();
        try {
            // Requete SQL
            String sql = "SELECT * FROM annonce";
            Statement statement = conn.createStatement();

            ResultSet resultSet = statement.executeQuery(sql);
            // Je boucle sue le resultat
            while (resultSet.next()) {
                // J'instancie une annonce
                Annonce annonce = new Annonce();

                // Je lui assigne les valeurs de la base de données
                annonce.setId(resultSet.getInt("id"));
                annonce.setType(resultSet.getString("type"));
                annonce.setPrix(resultSet.getDouble("prix"));
                annonce.setDescription(resultSet.getString("description"));
                annonce.setSurface(resultSet.getDouble("surface"));
                annonce.setSite(resultSet.getString("site"));
                annonceList.add(annonce);
            }
            return annonceList;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void delete(int id) {
        try {
            String sql = "DELETE FROM annonce WHERE id = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, id);
            int rowsAffected = statement.executeUpdate();

            if (rowsAffected == 0) {
                System.out.println("No user with ID " + id + " found.");
            } else {
                System.out.println("User with ID " + id + " deleted successfully.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
