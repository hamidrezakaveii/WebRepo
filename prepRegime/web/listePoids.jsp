<%-- 
    Document   : listePoids
    Created on : 2018-09-06, 11:52:56
    Author     : 1795545
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <div id="container" class="clearfix">
        <div id="principale">
            
             <c:forEach var="item" items="${liste}">

                         
                                <table >
                                        
                                          
                                        
                                        <tr>
                                             <td>Numero : ${item.numero}</td>
                                             
                                        </tr>  
                                         <tr>
                                             <td>Poids : ${item.poids}</td>
                                             
                                        </tr>
                                        <tr>
                                             <td>Semaine : ${item.semaine}</td>
                                             
                                        </tr>
                                         <tr>
                                             <td>Boni : ${item.boni}</td>
                                             
                                        </tr> 

                                 </table>
                               <br/>
                            </c:forEach>
                                             <h3>Total Boni: ${totalboni}</h3>
                                             <h3>Total Montant: ${montant}</h3>
            
            
        </div>
    </div>
    </body>
</html>
