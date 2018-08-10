<%-- 
    Document   : index
    Created on : 2018-08-10, 09:59:17
    Author     : 1795545
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="scripts/scriptAjax.js" type="text/javascript"></script>
    </head>
    <body>
        <form name="maForm">
            TempCel<input type="text" name="vtc" value="" />
            <input type="submit" value="Convertir"  onclick="calculer()"/>
            <input type="text" name="resultat" value="" />
        </form>
        <br /><br />
        <div id="res"></div>
        <script src="scripts/scriptAjax.js" type="text/javascript"></script>
    </body>
</html>
