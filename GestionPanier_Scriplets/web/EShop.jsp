<%-- 
    Document   : echop
    Created on : 2010-02-21, 09:37:13
    Author     : Toshiba
--%>

<html>
<head>
 <title>Music Without Borders</title>
</head>
<body bgcolor="#33EEFF">

    <h1> Musique sans fronti�res </h1>

 <hr><p>

 <form name="shoppingForm" action="ShoppingServlet_0" method="POST">
 <b>CD:</b>

<!--Ici on g�n�re l'affichage des produits EN DUR directement dans la page
 Ceci peut �tre remplac� par du code qui recherche les donn�es dans une BDD et
 affiche les produits -->
 <select name=CD>
      <option>Yuan | The Guo Brothers | China | 4.95</option>
      <option>Drums of Passion | Babatunde Olatunji | Nigeria | 6.95</option>
      <option>Kaira | Tounami Diabate| Mali | 6.95</option>
      <option>The Lion is Loose | Eliades Ochoa | Cuba | 3.95</option>
      <option>Dance the Devil Away | Outback | Australia | 4.95</option>
      <option>Record of Changes | Samulnori | Korea | 2.95</option>
      <option>Djelika | Tounami Diabate | Mali | 4.95</option>
      <option>Rapture | Nusrat Fateh Ali Khan | Pakistan | 2.95</option>
      <option>Cesaria Evora | Cesaria Evora | Cape Verde | 6.95</option>
      <option>Ibuki | Kodo | Japan | 3.95</option>
 </select>

 <!-- ICI on a la zone de texte pour saisir la quantit� -->
 <b>Quantity: </b><input type="text" name="qty" SIZE="3" value=1>

 <!--Ici on a un champ cach� qui est renvoy� au controleur avec les autres
 donn�es de la requ�te. Puisque la servlet controleur va traites les autres
 demandes: Supprimer un �l�ment du panier, commander (Checkout), ce champ cach�
 va �tre lu par la servlet pour d�terminer le traitement � ex�cuter
 -->
 <input type="hidden" name="action" value="ADD">

 <!-- en cliquant sur ce bouton, la requ�te est envoy�e � la servlet -->
 <input type="submit" name="Submit" value="Ajouter au panier">
 </form>

 <p>

 <!-- Ici on inclut le code jsp qui affiche le panier -->
 <jsp:include page="panier.jsp"  />
</body>
</html>

