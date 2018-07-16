/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author HAMIDREZA
 */
public class Produit {

    private String description;
    private int quantite;
    private double prixUnit;

    public Produit() {
        
    }

    public Produit(String description, int quantite, double prixUnit) {
        this.description = description;
        this.quantite = quantite;
        this.prixUnit = prixUnit;
    }

    public String getDescription() {
        return description;
    }

    public int getQuantite() {
        return quantite;
    }

    public double getPrixUnit() {
        return prixUnit;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }

    public void setPrixUnit(double prixUnit) {
        this.prixUnit = prixUnit;
    }

}
