<%-- 
    Document   : AfficherCommande.jsp
    Created on : 2010-02-28, 15:00:13
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="commande" class="modele.Commande" scope="request" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th colspan="2"> Voici le résumé de votre commande</th>

                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Nom</td>
                    <td><jsp:getProperty name="commande" property="nom" /></td>
                </tr>
                <tr>
                    <td>Prénom</td>
                    <td><jsp:getProperty name="commande" property="prenom" /></td>
                </tr>
                <tr>
                    <td>Adresse</td>
                    <td><jsp:getProperty name="commande" property="adresse" /></td>
                </tr>
                <tr>
                    <td>Type gateau</td>
                    <td><jsp:getProperty name="commande" property="typeGateau" /></td>
                </tr>
                <tr>
                    <td>Glaçage</td>
                    <td><jsp:getProperty name="commande" property="typeGlacage" /></td>
                </tr>
                <tr>
                    <td>Total du </td>
                    <td><jsp:getProperty name="commande" property="total" /></td>
                </tr>
            </tbody>
        </table>
                Vous pouvez continuer à magasiner <a href="index.jsp">Continuer</a>
       
    </body>
</html>
