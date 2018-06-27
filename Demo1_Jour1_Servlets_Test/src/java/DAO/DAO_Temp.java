/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import entity.Temp;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author HAMIDREZA
 */
public class DAO_Temp {

    static Session session = null;

    public static int afficher(String col) {
        
        Query query = session.createQuery("from Temp");

        List<Temp> resultat = query.list();
        int result=0;
        if (col.equals("cel")) {
            for (Temp line : resultat) {
                result = line.getFarenheit();
            }
        }
        if (col.equals("far")) {
            for (Temp line : resultat) {
                result = line.getCelsius();
            }
        }
        session.close();
        return result;
        
    }
}
