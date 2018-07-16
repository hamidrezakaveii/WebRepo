<%-- 
    Document   : confirmation
    Created on : Jul 16, 2018, 12:48:23 AM
    Author     : HAMIDREZA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmation sur le produit</title>
    </head>
    <body>
                <table border="2">
            <thead>
                <tr>
                    <th colspan="2">Confirmation sur le produit</th>     
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Description: </td>
                    <td><input type="text" name="description" value="${pr2.description}" /></td>
                </tr>
                <tr>
                    <td>Quantite: </td>
                    <td><input type="text" name="quantite" value="${pr2.quantite}" /></td>
                </tr>
                <tr>
                    <td>Prix: </td>
                    <td><input type="text" name="prix" value="${pr2.prixUnit}" /></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
