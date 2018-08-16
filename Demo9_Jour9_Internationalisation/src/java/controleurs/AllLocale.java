/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controleurs;

import java.util.Locale;

/**
 *
 * @author 1795545
 */
public class AllLocale {

    public static void main(String args[]) {
        //methode statique de la clsse Locale, qui retorne un tableau contenant
        //tous les locales disponible.

        Locale[] locales = Locale.getAvailableLocales();

        for (int i = 0; i < locales.length; i++) {
            //Get the 2-letter language code
            String language = locales[i].getLanguage();

            //Get the 2-letter country code; may to ""
            String country = locales[i].getCountry();

            //Get localized name suitable for display to the user
            String locName = locales[i].getDisplayName();
            System.out.println(language + "," + country + "," + locName);

        }
        System.out.println("********************************************");

        /*
            la methode getDefault() permet de recouperer sous la forme d'un objet 
            de type Locale, les information sur la langue et le pays par defaut
         */
        Locale locale = Locale.getDefault();

        /*
            affichage direct de l'objet locale, en fait il va afficher en utilisant
            toString on aurait pu avoir recours aux differents methodes de la classe
            Local(getLanguage, getCountry,...)
         */
        System.out.println(locale);

    }
}
