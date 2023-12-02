package fr.cda.metier.annonce;

/**
 * Classe Annonce
 * @author Julien Rolland
 */
public class Annonce {
    private int id;
    private String type;
    private double prix;
    private String description;
    private double surface;
    private String site;
    private int id_type;
    private int id_ville;

    /**
     * Constructeur
     * @param type
     * @param prix
     * @param description
     * @param surface
     * @param site
     * @param id_type
     * @param id_ville
     */
    public Annonce(String type, double prix, String description, double surface, String site, int id_type, int id_ville) {
        this.type = type;
        this.prix = prix;
        this.description = description;
        this.surface = surface;
        this.site = site;
        this.id_type = id_type;
        this.id_ville = id_ville;
    }

    /**
     * Constructeur vide
     */
    public Annonce() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public int getId_type() {
        return id_type;
    }

    public void setId_type(int id_type) {
        this.id_type = id_type;
    }

    public int getId_ville() {
        return id_ville;
    }

    public void setId_ville(int id_ville) {
        this.id_ville = id_ville;
    }

    public double getSurface() {
        return surface;
    }

    public void setSurface(double surface) {
        this.surface = surface;
    }

    /**
     * toString()
     * @return
     */
    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("Annonce{");
        sb.append("id=").append(id);
        sb.append(", type='").append(type).append('\'');
        sb.append(", prix=").append(prix);
        sb.append(", description='").append(description).append('\'');
        sb.append(", site=").append(site);
        sb.append(", id_type=").append(id_type);
        sb.append(", id_ville=").append(id_ville);
        sb.append('}');
        return sb.toString();
    }
}
