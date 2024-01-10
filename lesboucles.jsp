<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>
    
<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>

<%-- Boucle for pour afficher une ligne d'étoiles --%>
 <%int cpt = Integer.parseInt(valeur); %>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
       <%= "*" %>
    <% } %>

    </p>

<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>Ecrire le code afin de produire un carré d'étoile</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*****</br>*****</br>*****</br>*****</br>*****</p>
<% int Carre = Integer.parseInt(valeur); %>
<% for (int i = 0; i < Carre; i++) { %>
    <%
    for (int j = 0; j < Carre; j++) {
        out.print("*");
    }
    %><br>

<% } %>


<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*</br>**</br>***</br>****</br>*****</p>

<% int Triangle = Integer.parseInt(valeur); %>
<% for (int i = 0; i < Triangle; i++) { %>
    <%
    for (int j = 0; j <= i; j++) {
        out.print("*");
    }
    %><br>
<% } %>

<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>*****</br>****</br>***</br>**</br>*</p>

<% int tailleInverse = Integer.parseInt(valeur); %>
<% for (int i = tailleInverse; i > 0; i--) { %>
    <%
    for (int j = 0; j < i; j++) {
        out.print("*");
    }
    %><br>
<% } %>



<h2>Exercice 4 : Triangle rectangle 2</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>



<h2>Exercice 5 : Triangle isocele</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;***</br>&nbsp;****</br>*****</p>

<% int TriangleIsocele = Integer.parseInt(valeur); %>
<% for (int i = 1; i <= TriangleIsocele; i++) { %>
    <%
    for (int j = 0; j < TriangleIsocele - i; j++) {
        out.print("&nbsp;");
    }
    for (int k = 0; k < i; k++) {
        out.print("*");
    }
    %><br>
<% } %>

<h2>Exercice 6 : Le demi losange</h2>
<p>Ecrire le code afin de produire un losange</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>
<p>*****</br>&nbsp;&nbsp;****</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</p>

<% int Losange = Integer.parseInt(valeur); %>
<% for (int i = 1; i <= Losange; i++) { %>
    <%
    for (int j = 0; j < Losange - i; j++) {
        out.print("&nbsp;");
    }
    for (int k = 0; k < i; k++) {
        out.print("*");
    }
    %><br>
<% } %>
<% for (int i = Losange - 1; i > 0; i--) { %>
    <%
    for (int j = 0; j < Losange - i; j++) {
        out.print("&nbsp;");
    }
    for (int k = 0; k < i; k++) {
        out.print("*");
    }
    %><br>
<% } %>


<h2>Exercice 7 : La table de multiplication</h2>
<p>Ecrire le code afin de créser une table de multiplication</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>5 x 1 = 5</p>
<p>5 x 2 = 10</p>
<p>5 x 3 = 15</p>
<p>5 x 4 = 20</p>
<p>5 x 5 = 25</p>

<% int table = Integer.parseInt(valeur); %>
<% for (int i = 1; i <= 5; i++) { %>
    <%= table + " x " + i + " = " + (table * i) %><br>
<% } %>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
