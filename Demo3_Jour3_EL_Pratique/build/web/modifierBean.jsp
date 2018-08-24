<%-- 
    Document   : modifierBean
    Created on : Jul 16, 2018, 12:05:12 AM
    Author     : HAMIDREZA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="SeavgardeBean" method="POST">
        <table border="1">
            <thead>
                <tr>
                    <th colspan="2">Information sur le produit</th>
                    
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Description: </td>
                    <td><input type="text" name="description" value="${pr.description}" /></td>
                </tr>
                <tr>
                    <td>Quantite: </td>
                    <td><input type="text" name="quantite" value="${pr.quantite}" /></td>
                </tr>
                <tr>
                    <td>Prix: </td>
                    <td><input type="text" name="prix" value="${pr.prixUnit}" /></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="submit" value="modifier" /></td>
                    
                </tr>
                </form>
            </tbody>
        </table>

    </body>
</html>
