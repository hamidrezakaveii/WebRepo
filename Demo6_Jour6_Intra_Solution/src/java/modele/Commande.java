/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package modele;

/**
 *
 * @author Toshiba
 */
public class Commande {

    private String nom;
    private String prenom;
    private String adresse;
    private String typeGateau;
    private String typeGlacage;

  
    public String getTypeGlacage() {
        return typeGlacage;
    }

       public void setTypeGlacage(String typeGlacage) {
        this.typeGlacage = typeGlacage;
    }

    public String getTypeGateau() {
        return typeGateau;
    }

 
    public void setTypeGateau(String typeGateau) {
        this.typeGateau = typeGateau;
    }

  public String getAdresse() {
        return adresse;
    }

     public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getPrenom() {
        return prenom;
    }

  
    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getNom() {
        return nom;
    }

 
    public void setNom(String nom) {
        this.nom = nom;
    }

public double getTotal(){
    double prixbase,extra,total=0;
    if (typeGateau.equals("spiderman"))
        prixbase=30;
    else
        prixbase=25;
    if (typeGlacage.equals("choc"))
        extra=7;
    else
        extra=5;
    total=prixbase+extra+10;

    return total;
}

}
