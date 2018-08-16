/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controleurs;

import java.util.Locale;
import java.util.ResourceBundle;
import java.util.Scanner;
import javax.ejb.Local;

/**
 *
 * @author 1795545
 */
public class Exemplei18n {
    
    static public void main(String[] args){
        
        ResourceBundle messages;
        
        messages = ResourceBundle.getBundle("Internationalisation");
        
        
        System.out.println(messages.getString("greetings"));
        System.out.println(messages.getString("inquiry"));
        System.out.println(messages.getString("farewell"));
        
        String language="";
        String country="";
        String choix="";
        Locale currentLocale;
        
        Scanner sc = new Scanner(System.in);
        System.out.println("Quelle lange (fr pour francais et al pour allemand)");
        choix = sc.next();
        
        if(choix.equals("fr")){
            language = "fr";
            country = "CA";
        }
        
        if(choix.equals("al")){
            language = "de";
            country = "DE";
        }
        
        currentLocale = new Locale(language, country);
        
        messages = ResourceBundle.getBundle("Internationalisation",currentLocale);
        
        System.out.println(messages.getString("greetings"));
        System.out.println(messages.getString("inquiry"));
        System.out.println(messages.getString("farewell"));
        
    }
}
