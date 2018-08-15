<%-- 
    Document   : index
    Created on : 2010-02-28, 13:58:36
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="maform" action="TraiterCommande" method="POST">
            <table border="1" align="center" width="40%">
                <thead>
                    <tr>
                        <th colspan="2"><h1>Saisir votre commande</h1></th>
                    </tr>
                </thead>
                <tbody>
                   <tr>
                        <td>Nom</td>
                        <td><input type="text" name="nom" value="" /></td>
                    </tr>
                     <tr>
                        <td>Prénom</td>
                        <td><input type="text" name="prenom" value="" /></td>
                    </tr>
                    <tr>
                        <td>Adresse</td>
                        <td>
                          <input type="text" name="adresse" value="" size="69" />
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="3" valign="top">Thème</td>
                        <td><input type="radio" name="theme" value="spiderman" checked />Spiderman</td>

                    </tr>
                    <tr>
                        <td><input type="radio" name="theme" value="Transformer" />Transformer</td>
                        
                    </tr>
                    <tr>
                        <td><input type="radio" name="theme" value="Barbie" />Barbie</td>
                    </tr>
                    <tr>
                        <td rowspan="2" valign="top">Glacage</td>
                        <td><input type="radio" name="glacage" value="choc" checked />Chocolat</td>
                    </tr>
                    <tr>
                       <td><input type="radio" name="glacage" value="vanille" />Vanille</td>
                    </tr>

                    

                    <tr>
                        <td>Extras</td>
                        <td>
                            <input type="checkbox" name="extras" value="bonbons" />Bonbons
                            <br>
                             <input type="checkbox" name="extras" value="fruits" />Fruits
                            <br>
                           </td>
                        </tr>
                        <tr>
                        <td colspan="2" align="center"> <input type="submit" value="Envoyer" name="send" /></td>

                    </tr>
                </tbody>
            </table>
            <a href="AutresProduits.jsp" >Cliquer ici pour d'autres produits</a>
        </form>
    </body>
</html>
