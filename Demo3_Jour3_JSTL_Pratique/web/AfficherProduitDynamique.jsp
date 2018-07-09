<%-- 
    Document   : AfficherProduitDynamique
    Created on : 2018-07-09, 17:32:41
    Author     : 1795545
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="2">
            <tr>
                <th>Nom</th>
                <th>Prix</th>
                <th>Photo URL</th>
            </tr>
            <c:forEach var="info" items="${sessionScope.maListe}">
                <tr>
                    <td>${info.nom}</td>
                    <td>${info.prix}</td>
                    <td>${info.photoURL}</td>
                </tr>
            </c:forEach>
            </table>
    </body>
</html>


