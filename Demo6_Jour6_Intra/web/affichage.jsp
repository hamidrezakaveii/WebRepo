<%-- 
    Document   : affichage
    Created on : 2018-08-09, 12:24:23
    Author     : 1795545
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="2">
            <thead>
                <tr>
                    <th colspan="2">Resultat de commande</th>
                    
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Nom et prenom:</td>
                    <td>${myCommande.prenom} ${myCommande.nom}</td>
                </tr>
                <tr>
                    <td>Adress: </td>
                    <td>${myCommande.adress}</td>
                </tr>
                <tr>
                    <td>Theme: </td>
                    <td>${myCommande.theme}</td>
                </tr>
                <tr>
                    <td>Total prix: </td>
                    <td>${myCommande.prixTotal}</td>
                </tr>
                <tr>
                    <td colspan="2"><a href="commande.html">Reteur a la page demande</a></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
