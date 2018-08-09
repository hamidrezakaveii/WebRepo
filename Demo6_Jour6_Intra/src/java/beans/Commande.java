/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author 1795545
 */
public class Commande {
    
    private String nom;
    private String prenom;
    private String adress;
    private String theme;
    private double prixTotal;

    public Commande(String nom, String prenom,String adress, String theme, double prixTotal) {
        this.nom = nom;
        this.prenom = prenom;
        this.adress = adress;
        this.theme = theme;
        this.prixTotal = prixTotal;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public double getPrixTotal() {
        return prixTotal;
    }

    public void setPrixTotal(double prixTotal) {
        this.prixTotal = prixTotal;
    }
    
    
    
    
    
    
    
}
