/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

/**
 *
 * @author 1795545
 */
public class Calcul {

    public static double calculPrix(String theme, String glacage) {
        
        double prixTotal = 0;
        double themePrix = 0;
        double glacagePrix = 0;
        final double livraison = 10;

        if (theme.equals("spiderman")) {
            themePrix = 25;
        } else {
            themePrix = 20;
        }

        if (glacage.equals("chocolat")) {
            glacagePrix = 7;
        } else if (glacage.equals("vanile")){
            glacagePrix = 5;
        }
        
        prixTotal = themePrix + glacagePrix + livraison;
        
        return prixTotal;
    }
}
