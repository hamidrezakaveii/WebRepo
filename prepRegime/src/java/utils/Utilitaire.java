/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.util.ArrayList;
import model.Poids;

/**
 *
 * @author 1795545
 */
public class Utilitaire {
    
    
    public static int calculTotalBoni(int num){
        
        int boni = 0;
        
        
        ArrayList<Poids> list = dao.ListPoids.listePoidsParId(num);
        
        for(int i =0 ; i < list.size(); i++){
            boni = boni + list.get(i).getBoni();
        }
        
        return boni;
    }
    
    public static int calculBoni(int poids1, int poids2){
        
 
        return poids1 - poids2;
    }
    
    
    public static int calculMontant(int totalBoni){
        
        int montant = 0 ;
        
        montant = totalBoni * 5 ;
        
        return montant;
        
    }
}
