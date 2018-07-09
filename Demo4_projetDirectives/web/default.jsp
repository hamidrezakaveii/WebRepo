<%-- 
    Document   : default
    Created on : May 6, 2015, 8:48:07 AM
    Author     : administrateur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World! </h1>
        
        <a href="Excel.jsp" > Générer une feuille excel </a>
        <br>
        <a href="ApplesAndOranges.jsp?format=excel">Générer feuille excel selon condition</a><br>
        
        <a href="TraitDonneesPourFichierExcel">Générer fich excel via servlet</a><br>
        
        <a href="ComputeSpeed.jsp" > tester erreur</a>
        
      
    </body>
</html>
