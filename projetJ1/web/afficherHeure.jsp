<%-- 
    Document   : afficherHeure
    Created on : 2010-01-17, 18:03:59
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
  <body>
   <h1>Nous sommes le <%= new java.util.Date().toString() %> et tout va bien.</h1>
  </body>
</html>
