// CECI MARCHE GRACE AU FICHIER jquery.js

//$(document).ready(function(){ // Permet de lancer la fonction quand l'élément html est prêt
$(function(){  //ceci est un raccourci pour écrire la ligne du dessus

    $("#start").click(function(){
        $("#div2").load("demo.txt");

    });

});