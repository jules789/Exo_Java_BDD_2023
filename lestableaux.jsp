<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les tableaux</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les tableaux</h1>
<form action="#" method="post">
    <p>Saisir au minimu 3 chiffres à la suite, exemple : 6 78 15 <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null) { %>

    <%-- Division de la chaîne de chiffres séparés par des espaces --%>
    <% String[] tableauDeChiffres = chaine.split("\\s+"); %>
    <p>La tableau contient <%= tableauDeChiffres.length %> valeurs</br>
    Chiffre 1 : <%= Integer.parseInt(tableauDeChiffres[0]) %></br>
    Chiffre 2 : <%= Integer.parseInt(tableauDeChiffres[1]) %></br>
    Chiffre 3 : <%= Integer.parseInt(tableauDeChiffres[2]) %></p>
    
<h2>Exercice 1 : La carré de la première valeur</h2>
<p>Ecrire un programme afin d'afficher le carré de la première valeur</p>
<% 
        String[] tableauDeChiffres = chaine.split("\\s+");
        int premierChiffre = Integer.parseInt(tableauDeChiffres[0]);
        int carrePremierChiffre = premierChiffre * premierChiffre;
    %>
    <p>Le carré du premier chiffre est : <%= carrePremierChiffre %></p>
<% } %>

<h2>Exercice 2 : La somme des 2 premières valeurs</h2>
<p>Ecrire un programme afin d'afficher la somme des deux premières valeurs</p>

<% 
        String[] tableauDeChiffres = chaine.split("\\s+");
        int sommeDeuxPremiersChiffres = Integer.parseInt(tableauDeChiffres[0]) + Integer.parseInt(tableauDeChiffres[1]);
    %>
    <p>La somme des deux premiers chiffres est : <%= sommeDeuxPremiersChiffres %></p>
<% } %>

<h2>Exercice 3 : La somme de toutes les valeurs</h2>
<p>L'utilisateur peut à présent saisir autant de valeurs qu'il le souhaite dans champs de saisie.</br>
Ecrire un programme afin de faire la somme de toutes les valeurs saisie par l'utilisateur</p>

<% 
        String[] tableauDeChiffres = chaine.split("\\s+");
        int sommeToutesValeurs = 0;
        for (String chiffre : tableauDeChiffres) {
            sommeToutesValeurs += Integer.parseInt(chiffre);
        }
    %>
    <p>La somme de toutes les valeurs est : <%= sommeToutesValeurs %></p>
<% } %>

<h2>Exercice 4 : La valeur maximum</h2>
<p>Ecrire un programme pour afficher la valeur maximale saisie par l'utilisateur</p>
<% 
        String[] tableauDeChiffres = chaine.split("\\s+");
        int valeurMax = Integer.MIN_VALUE;
        for (String chiffre : tableauDeChiffres) {
            valeurMax = Math.max(valeurMax, Integer.parseInt(chiffre));
        }
    %>
    <p>La valeur maximale est : <%= valeurMax %></p>
<% } %>

<h2>Exercice 5 : La valeur minimale</h2>
<p>Ecrire un programme pour afficher la valeur minimale saisie par l'utilisateur</p>
<% 
        String[] tableauDeChiffres = chaine.split("\\s+");
        int valeurMin = Integer.MAX_VALUE;
        for (String chiffre : tableauDeChiffres) {
            valeurMin = Math.min(valeurMin, Integer.parseInt(chiffre));
        }
    %>
    <p>La valeur minimale est : <%= valeurMin %></p>
<% } %>

<h2>Exercice 6 : La valeur le plus proche de 0</h2>
<p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>
<% 
        String[] tableauDeChiffres = chaine.split("\\s+");
        int valeurProcheDeZero = Integer.parseInt(tableauDeChiffres[0]);
        int differenceMin = Math.abs(valeurProcheDeZero);

        for (String chiffre : tableauDeChiffres) {
            int valeurActuelle = Integer.parseInt(chiffre);
            int difference = Math.abs(valeurActuelle);
            if (difference < differenceMin) {
                valeurProcheDeZero = valeurActuelle;
                differenceMin = difference;
            }
        }
    %>
    <p>La valeur la plus proche de 0 est : <%= valeurProcheDeZero %></p>
<% } %>

<h2>Exercice 7 : La valeur le plus proche de 0 (2° version)</h2>
<p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>
<p>En cas d'égalité entre un chiffre positif et négatif, affichez le chiffre positif</p>
<% 
        String[] tableauDeChiffres = chaine.split("\\s+");
        int valeurProcheDeZero = Integer.parseInt(tableauDeChiffres[0]);
        int differenceMin = Math.abs(valeurProcheDeZero);

        for (String chiffre : tableauDeChiffres) {
            int valeurActuelle = Integer.parseInt(chiffre);
            int difference = Math.abs(valeurActuelle);
            if (difference < differenceMin || (difference == differenceMin && valeurActuelle > 0)) {
                valeurProcheDeZero = valeurActuelle;
                differenceMin = difference;
            }
        }
    %>
    <p>La valeur la plus proche de 0 est : <%= valeurProcheDeZero %></p>
<% } %>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
