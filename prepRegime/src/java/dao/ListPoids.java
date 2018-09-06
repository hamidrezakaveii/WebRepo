/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import model.Poids;

/**
 *
 * @author 1795545
 */
public class ListPoids {

    public static ArrayList<Poids> listePoids = new ArrayList<Poids>();

    public static void enregistrerPoids(Poids nouvellePoids) {

        listePoids.add(nouvellePoids);

    }

    
    
    
    public static ArrayList<Poids> listePoidsParId(int id) {

        ArrayList<Poids> liste = new ArrayList<Poids>();
        
        for(int i=0; i<listePoids.size(); i++){
            
            if(listePoids.get(i).getNumero() == id ){
                liste.add(listePoids.get(i));
            }
        }

        return liste;

    }

}
