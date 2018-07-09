/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

/**
 *
 * @author 1795545
 */
public class Info {
    
    private String nom;
    private String prenom;
    private int revenu;
    private int montantPret;

    public Info() {
    }

    
    
    
    public Info(String nom, String prenom, int revenu, int montantPret) {
        this.nom = nom;
        this.prenom = prenom;
        this.revenu = revenu;
        this.montantPret = montantPret;
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

    public double getRevenu() {
        return revenu;
    }

    public void setRevenu(int salaire) {
        this.revenu = salaire;
    }

    public int getMontantPret() {
        return montantPret;
    }

    public void setMontantPret(int montantPret) {
        this.montantPret = montantPret;
    }


    
    
    
}
