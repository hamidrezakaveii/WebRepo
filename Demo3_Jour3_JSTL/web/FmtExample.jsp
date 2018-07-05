
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html  >
    <head>
        <title>format number</title>
    </head>
    <body>
        
        <c:set var="val" value="200.51" />

        <fmt:setLocale value="en_US"/>

        <fmt:formatNumber value="${val}" />

        <fmt:setLocale value="fr_FR"/>
        
        <fmt:formatNumber value="${val}" />

        <p>Formater des dates</p>

        <jsp:useBean id="now" class="java.util.Date" />

        ${now}

        <fmt:formatDate value ="${now}"
                        type="both"
                        timeStyle="short"
                        dateStyle="full" /><br/>

        <fmt:formatDate value ="${now}"
                        type="time"
                        timeStyle="long"
                        /><br/> 

        <fmt:formatDate value ="${now}"
                        pattern="EEEE hh:mm a"
                        />
        
    
    </body> 
</html>

