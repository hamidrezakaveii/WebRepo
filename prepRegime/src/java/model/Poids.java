/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author 1795545
 */
public class Poids {
    
    private int numero;
    private int poids;
    private int semaine;
    private int boni;
    
    
    public Poids() {
                
                Poids p1 = new Poids(101, 65, 1);
                Poids p2 = new Poids(102, 78, 1);
                Poids p3 = new Poids(103, 68, 1);
                
                dao.ListPoids.listePoids.add(p1);
                dao.ListPoids.listePoids.add(p2);
                dao.ListPoids.listePoids.add(p3);
    }

    public Poids(int numero, int poids, int semaine) {
        this.numero = numero;
        this.poids = poids;
        this.semaine = semaine;
    }

    
    
    
    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public int getPoids() {
        return poids;
    }

    public void setPoids(int poids) {
        this.poids = poids;
    }

    public int getSemaine() {
        return semaine;
    }

    public void setSemaine(int semaine) {
        this.semaine = semaine;
    }

    public int getBoni() {
        return boni;
    }

    public void setBoni(int boni) {
        this.boni = boni;
    }
    
    
    
    
}
