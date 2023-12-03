package fr.cda;

import java.io.*;
import java.sql.SQLException;
import java.util.List;

import fr.cda.metier.annonce.Annonce;
import fr.cda.metier.annonce.AnnonceDao;
import fr.cda.util.DaoFactory;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

/**
 * Classe AccueilServlet
 * @author Julien Rolland
 */
public class AccueilServlet extends HttpServlet {
    private AnnonceDao annonceDao;
    private List<Annonce> annonceList;

    /**
     * init()
     */
    public void init() {
        DaoFactory daoFactory = DaoFactory.getInstance();
        try {
            this.annonceDao = daoFactory.getAnnonceDao();
            this.annonceList = annonceDao.findAll();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * doGet()
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        session.setAttribute("annonceList", this.annonceList);
        this.getServletContext().getRequestDispatcher("/WEB-INF/accueil.jsp").forward(request, response);
    }

    /**
     * destroy()
     */
    public void destroy() {
    }
}