
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
        <h1>Affichage si Locale en_US :</h1>
        <fmt:formatNumber value="${val}" />

        <fmt:setLocale value="fr_FR"/>
        <h1>Affichage si Locale fr_FR :</h1>
        <fmt:formatNumber value="${val}" />

        <p>Formater des dates</p>
        <jsp:useBean id="now" class="java.util.Date" />
        <UL>
            <LI>
                Sans aucun format personnalisé: ${now}
            </LI>  
            <LI>
                Avec un format personnalisé: 
                <fmt:formatDate value ="${now}"
                   type="both"
                   timeStyle="short"
                   dateStyle="full" />
            </LI> 
                        <LI>
                Avec un autre format personnalisé: 
                <fmt:formatDate value ="${now}"
                   type="time"
                   timeStyle="long"
                 />
            </LI> 
            <LI>
               Encore un autre format
               <fmt:formatDate value ="${now}"
                        pattern="EEEE hh:mm a"/>  
            </LI>
            
        </UL>
    </body> 
</html>

