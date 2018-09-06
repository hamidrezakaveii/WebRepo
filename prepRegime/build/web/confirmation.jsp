<%-- 
    Document   : confirmation
    Created on : 2018-09-06, 11:26:00
    Author     : 1795545
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:setBundle basename="Resource"/>
        <div id="container" class="clearfix">
        <h2>Demande enregistrer!</h2>

        
        <table>
            
            <tr><td><c:message key="enr.nomero"/></td><td>${param.nemero}</td></tr>
            <tr><td><c:message key="enr.poids"/></td><td>${param.poids}</td></tr>
            <tr><td><c:message key="enr.semaine"/></td><td>${param.semaine}</td></tr>
            <tr><td><c:message key="enr.boni"/></td><td>${boni}</td></tr>
            
        </table>
    </div>
    </body>
</html>
