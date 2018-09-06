<%-- 
    Document   : rechercher
    Created on : 2018-09-06, 09:30:14
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
            <div id="container" class="clearfix">
        <div id="principale">
            Veuillez saisir votre numero <br/><br/>
            <form  action="TraiterRecherche">
                    <table>
                   <tr>
                       <td>Numéro:</td><td> <input type="text" name="nemero"/> </td> 
                   </tr>
                   <tr>
                       <td colspan="2"> <input type="submit" value="Soumettre"></td>
                   </tr>
                    </table>
                <form>
    </body>
</html>
