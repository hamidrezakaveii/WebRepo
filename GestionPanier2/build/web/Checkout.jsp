<%-- 
    Document   : Checkout
    Created on : 2010-02-21, 10:02:47
    Author     : Toshiba
--%>

<%@ page session="true" import="java.util.*,modele.CD" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>Checkout Musique sans frontières</title>
    </head>
    <body bgcolor="#33CCFF">
        <font face="Times New Roman,Times" size=+3>
        Checkout Musique sans frontières
        </font>
        <c:if test="${ requestScope['shoppingcart']!=null }" >
        <center>   
            <table border="0" cellpadding="0" width="100%" bgcolor="#FFFFFF">
                <tr>
                    <td><b>ALBUM</b></td>
                    <td><b>ARTIST</b></td>
                    <td><b>COUNTRY</b></td>
                    <td><b>PRICE</b></td>
                    <td><b>QUANTITY</b></td>
                </tr>

                <c:forEach var="cd" items="${shoppingcart}" >
                    <tr>
                        <td>${cd.album}</td>
                        <td>${cd.artist}</td>
                        <td>${cd.country}</td>
                        <td>${cd.price}</td>
                        <td>${cd.quantity}</td>
                    </tr> 
                </c:forEach>

                <tr>
                    <td>     </td>
                    <td>     </td>
                    <td><b>TOTAL</b></td>
                    <td><b>${amount}</b></td>
                    <td>     </td>
                </tr>
            </table>
        </c:if>
        <p>
            <a href="EShop.jsp">Continuer à magasiner!</a>
    </center>
</body>
</html>

