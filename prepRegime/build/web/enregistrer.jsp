<%-- 
    Document   : enregistrer
    Created on : 2018-09-06, 09:29:44
    Author     : 1795545
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nouvelle Enregistrement</title>
    </head>
    <body>
        <c:setBundle basename="Resource"/> 
        
       <!--%@include file="header.jsp"%-->  
       <div id="container" class="clearfix">
           <h2><c:message key="enr.nev"/></h2>
        <div id="principale">
            <br/><br/>
            <form  action="TraiterNeaveuPoids" method="POST">
                    <table>

                   <tr>
                   <td><c:message key="enr.nomero"/></td><td> <input type="text" name="nemero" /> </td> 
                   </tr>
                   <tr>
                  <td> <c:message key="enr.poids"/></td><td> <input type="text" name="poids" /> </td> 
                   </tr>
                  <tr>
                  <td><c:message key="enr.semaine"/></td><td> <input type="text" name="semaine" /> </td> 
                   </tr>
                   <tr>
                       <td colspan="2"> <input type="submit" value=<c:message key="enr.submit"/> /></td>
                   </tr>
                    </table>
                </form>                  
                 </div>
            </div>
    </body>
</html>
