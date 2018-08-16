<%-- 
    Document   : pageAvecLocale
    Created on : 2018-08-16, 12:25:45
    Author     : 1795545
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <fmt:bundle basename="Messages">
            <fmt:message key="count.one" /><br/>
            <fmt:message key="count.two"/><br/>
            <fmt:message key="count.three" /><br/>
</fmt:bundle>
        <!-- Changer de Locale-->
        <fmt:setLocale value="es_ES"/>
        <fmt:bundle basename="Messages">
            <fmt:message key="count.one" /><br/>
            <fmt:message key="count.two"/><br/>
            <fmt:message key="count.three"/><br/>
        </fmt:bundle>
    </body>
</html>
