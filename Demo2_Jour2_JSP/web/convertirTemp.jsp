<%-- 
    Document   : convertirTemp
    Created on : 2018-06-27, 16:06:03
    Author     : 1795545
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            double valeur, resultat;
            String message, unite;
            
            //valeur = Double.parseDouble(request.getParameter("valeur"));
            valeur = (Double)request.getAttribute("valeur");
            //unite = request.getParameter("unite");
            unite = (String)request.getAttribute("unite");
            
            if(unite.equals("far")){
                resultat = 9.0/5.0 * valeur +32;
                message = "Celcius";
            }
            else{
                resultat = (valeur-32) * 5/9;
                message="Farenheit";
            }

        %>
        
        <h1><%= valeur %><%= message %> veut <%= resultat %> <%= unite%></h1>
    </body>
</html>
