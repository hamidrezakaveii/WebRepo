<%-- 
    Document   : afficherBean
    Created on : Jul 8, 2018, 11:02:09 PM
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
        
        <ul>
            <li>Description : ${pr.description}</li>
            <li><font color="${ pr.quantite>20?"green": pr.quantite>10?"yellow":"red"}">Description : ${pr.quantite}</font></li>
            <li>Description : ${pr.prixUnit}</li>
        </ul>
    </body>
</html>
