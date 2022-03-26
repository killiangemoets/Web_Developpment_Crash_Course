// CECI MARCHE GRACE AU FICHIER jquery.js

$(document).ready(function(){ // Permet de lancer la fonction quand l'élément html est prêt
//$(function(){  //ceci est un raccourci pour écrire la ligne du dessus

    //$("h1").hide(); // le dollar permet de désigner un élément (c'est un selecteur)
    $("#title1").hide(); 
    //$(".par1").hide();
    $("p:nth-child(3)").hide(); //remarque: prend en compte tous les éléments au même niveau, mais n'agit que sur les p

     

});