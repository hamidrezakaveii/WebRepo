<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core"
          prefix="c" %>


<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"
          prefix="fmt" %>

<html>
    <head>
        <title>format Date Time</title>
    </head>
    <body>
        <jsp:useBean id="now" class="java.util.Date" />
        <p> Date format in US locale:
            <fmt:setLocale value="en_US" />
            <fmt:formatDate value="${now}" />          </p>

        <p>Time
            <fmt:formatDate value="${now}" type="time" /></p>
        <p>Date & Time:
            <fmt:formatDate value="${now}"
                            type="both" /></p>
        <p> Date format in France locale:
            <fmt:setLocale value="fr_FR" />
            <fmt:formatDate value="${now}"/>
        </p>

        <p>Time
            <fmt:formatDate value="${now}" type="time" /></p>
        <p>Date & Time:
          <fmt:formatDate value="${now}"
                            type="both" /></p>
        
   
    </body>
</html>