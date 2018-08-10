/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import Beans.Formation;
import java.util.ArrayList;

/**
 *
 * @author 1795545
 */
public class CatalogeFormation {
    
    
    ArrayList<Formation> mylist = new ArrayList<Formation>();

    public CatalogeFormation() {
        mylist.add(new Formation(1, "JAVA", "Montreal"));
        mylist.add(new Formation(2, "STRUTS", "Laval"));
        mylist.add(new Formation(3, "CSS", "Montreal"));
        mylist.add(new Formation(4, "HTML", "Quebec"));
        mylist.add(new Formation(5, "JAVA", "Quebec"));
        mylist.add(new Formation(6, "HTML", "Montreal"));
        
    }
    
    public ArrayList<Formation> rechercheCataloge(String langage){
        ArrayList<Formation> fr = new ArrayList<>();
        
        String upcast = langage.toUpperCase();
        
        for(Formation f: mylist){
            
            if(f.getFormation().equals(upcast)){
                fr.add(f);
            }
        }
        
        
        return fr;
    }
    
    
    
    
    
}
