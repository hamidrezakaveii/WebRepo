<%-- 
    Document   : inforegistration
    Created on : 2010-01-23, 22:37:47
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><form name="maform" action="RegistrationServlet">
        
        <table border="1">
        
                <tr>
                    <td>nom</td>
                    <td><input type="text" name="firstName" value="" /></td>
                </tr>
                <tr>
                    <td>prenom</td>
                    <td><input type="text" name="lastName" value="" /></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="envoyer" name="send" /></td>
                    
                </tr>
             </table>
</form>
    </body>
</html>
