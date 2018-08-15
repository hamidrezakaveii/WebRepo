<%-- 
    Document   : panier
    Created on : 2010-02-21, 09:55:15
    Author     : Toshiba
--%>

<%@ page session="true" import="java.util.*, modele.CD" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${ sessionScope['shoppingcart']!= null }" >
    <center>   
        <table border="0" cellpadding="0" width="100%" bgcolor="#FFFFFF">
            <tr>
                <td><b>ALBUM</b></td>
                <td><b>ARTIST</b></td>
                <td><b>COUNTRY</b></td>
                <td><b>PRICE</b></td>
                <td><b>QUANTITY</b></td>
                <td></td>
            </tr>
            <c:set var = "index" value = "0" />
            <c:forEach var="cd" items="${shoppingcart}" >
                <td>${cd.album}</td>
                <td>${cd.artist}</td>
                <td>${cd.country}</td>
                <td>${cd.price}</td>
                <td>${cd.quantity}</td>
                <td>
                    <form name="deleteForm"  action="ShoppingServlet_0" method="POST">
                        <input type="submit" value="Delete">
                        <input type="hidden" name= "delindex" value="${index}">
                        <input type="hidden" name="action" value="DELETE">
                    </form> </td>
                </tr> 
                <c:set var="index" value="${index +1}"/>
            </c:forEach>


        </table>
        <p>
        <form name="checkoutForm" action="ShoppingServlet_0" method="POST">
            <input type="hidden" name="action" value="CHECKOUT">
            <input type="submit" name="Checkout" value="Checkout">
        </form>
    </center>
    <a href="Test" >pdf</a>            
</c:if> 



