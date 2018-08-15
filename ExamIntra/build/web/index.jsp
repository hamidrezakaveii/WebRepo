<%-- 
    Document   : index
    Created on : 2018-08-10, 14:03:30
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
        <h1>Veuiller vous authentifier</h1>
        <form action="Validation" method="POST">
            <table border="2">
                <tbody>

                    <tr>
                        <td>Mot de pass</td>
                        <td><input type="text" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Se connecter" /></td>
                    </tr>
                </tbody>
            </table>
        </form>


    </body>
</html>
