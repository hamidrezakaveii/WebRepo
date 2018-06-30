<%-- 
    Document   : index
    Created on : 2010-01-17, 10:40:07
    Author     : Toshiba
--%>

<%@page  contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>On peut solliciter une servlet avec un lien </p>
        <a href="afficherHeure?nom=Paul" > lien vers une Servlet</a><br>
        
        <p>On peut aussi solliciter une servlet à l'aide d'un formulaire</p>
        Formulaire qui dirige vers la servlet<br>
        <!--methode par defaut GET -->
        <form action="afficherHeure" method="post"> <!-- ne pas mettre la / au début -->
           nom <input type="text" name="nom" />
           <input type="submit" value="envoyer à la servlet pour traitement"/>
        </form><br>

        <p>Ce lien dirige vers une page JSP qui assure le MÊME traitement que la
        servlet précédente </p>
        <a href="afficherHeure.jsp" > Afficher heure jsp </a> <br>
        
        <p>
            Lien vers une servlet qui affiche différentes informations 
            disponibles à travers l'objet request
        </p>
        <a href="afficherEntetes" > Afficher les entêtes de la req </a><br>


        <p>Lien vers un formulaire qui contient plusieurs contrôles. L'action
        associée au formulaire est une servlet qui permet d'afficher
        TOUS les paramètres reçus</p>

        <a href="ShowParametersPostForm.htm"> Afficher formulaire </a><br>
        <a href="wrongDestination" > Exemple sendredirect</a><br>

        <a href="formRedirect.html" > Redirection ou forward </a> <br>

        <a href="InfoSession" > info sur la session </a>
        <a href="InfoApp"> Application </a>
        <br/>

        <a href="LotteryNumbers" >EXEMPLE INIT</a>
    </body>
</html>
