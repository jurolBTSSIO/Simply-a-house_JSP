package fr.cda.metier.annonce;

import fr.cda.metier.annonce.Annonce;

import java.util.List;

public interface AnnonceDao {
    void add(Annonce annonce);
    void update(Annonce annonce);
    Annonce find(int id);
    List<Annonce> findAll();
    void delete(int id);
}
