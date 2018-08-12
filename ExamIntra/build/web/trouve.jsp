<%-- 
    Document   : trove
    Created on : 2018-08-10, 15:20:48
    Author     : 1795545
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="entete.jspf" />
        <title>JSP Page</title>
    </head>
    <body>
        <p>Bienvenue ${nom}, voici les information retrouvees pouur ${langage}</p>
        <table border="1">
            <thead>
                <tr>
                    <th>Titre</th>
                    <th>Ville</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${formation}">
                    <tr>
                        <td>${item.formation}</td>
                        <td>${item.ville}</td>
                    </tr>
                </c:forEach>   
                </tbody>
            </table>
        <a href="rechercheLangage.jsp">Une utre recherche</a>

        </body>
    </html>


