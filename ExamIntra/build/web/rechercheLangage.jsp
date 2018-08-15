<%-- 
    Document   : rechercheLangage
    Created on : 2018-08-10, 14:18:35
    Author     : 1795545
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="entete.jspf" />
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Saisir le langage recherché</h1>
        <form action="Recherche" method="POST">
            <table border="1">
                <tbody>
                    <tr>
                        <td>Nom </td>
                        <td><input type="text" name="nom" value="" /></td>
                    </tr>
                    <tr>
                        <td>Langage</td>
                        <td><input type="text" name="langage" value="" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Envoyer" /></td>
                    </tr>
                </tbody>
            </table>
        </form>


    </body>
</html>
