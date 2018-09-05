<%-- 
    Document   : newjsp
    Created on : 2018-08-16, 12:49:48
    Author     : 1795545
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<fmt:setLocale value="${not empty sessionScope.langue ? sessionScope.langue : pageContext.request.locale}" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <fmt:setBundle basename="ApplicationResource"/>
            <h1><fmt:message key="message.welcome"/></h1>
                
        <form name="maForm" action="ControlerServlet" method="get">
            
            <fmt:message key="form.langue" />
            <select name="langue" onchange="submit()">
                <option value=""></option>
                <option value="fr_CA"><fmt:message key="form.francais" /></option>
                <option value="en_US"><fmt:message key="form.anglais" /></option>
                <option value="es_ES"><fmt:message key="form.espagnol" /></option>
            </select>
            <input type="hidden" name="src" value="1" />
            <input type="submit" value="<fmt:message key="form.submit" />">
        </form>
            
    </body>
</html>
