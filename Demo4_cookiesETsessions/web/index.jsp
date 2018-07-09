<%-- 
    Document   : index
    Created on : 2010-01-23, 21:14:08
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
        <h1>Tests sur les cookies</h1>
        <a href="CookieTest" > test de cookies de session et persistents</a><br>
        <a href="RepeatVisitor" > Identite du visiteur en cookie</a><br>
        <a href="TestDomaine" > Afficher cookies accessibles à la servlet TEstDomaine</a>
        <br><br><br><br><br><br><br><br>
        <h1>TESTS SESSIONS </h1><br>

        ICI on affiche des infos sur la session: <a href ="ShowSession" > Afficher informations sur la session courante</a>

        <br><br><br>
        Dans cet exemple la servlet affiche elle même les items<br>
        <a href="OrderForm.htm" >Form 1 pour simuler une sélection d'articles à commander</a>
        <br><br><br><br>
        Ce 2ème formulaire permet de voir l'accès au même panier, si commande dans la même session<br>
         <a href="orderform2.html" >Form 2 pour simuler une sélection d'articles à commander</a>
        <br><br><br><br>

        L'exemple suivant confie l'affichage à une page JSP <br>
        <a href="OrderForm3.htm" >Form 3 pour simuler des articles à commander
            avec affichage par une page jsp
        </a><br><br><br>


        <h1>Ces deux liens simulent un panier plus complet </h1>
        <a href="KidsBooksPage"> Afficher livres pour enfants</a><br>
        <a href="TechBooksPage" > Afficher livres techniques </a>





        
    </body>
</html>
