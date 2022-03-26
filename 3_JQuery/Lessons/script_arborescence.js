// CECI MARCHE GRACE AU FICHIER jquery.js

//$(document).ready(function(){ // Permet de lancer la fonction quand l'élément html est prêt
$(function(){  //ceci est un raccourci pour écrire la ligne du dessus

    $("#start").click(function(){

        // $("#p1").css("border-color", "green");
        // $("#p1").parent().css("border-color", "blue");
        // $("#p1").parents().css("border-color", "blue");
        // $("#p1").parents(".special").css("border-color", "blue");
        // $("#main").children().css("border-color", "blue");
        // $("#main").find("p").css("border-color", "blue");
        // $("#p1").siblings().css("border-color", "blue"); //désigne les frères de p1
        // $("#p1").next().css("border-color", "blue"); //désigne le frère suivant de p1
        // $("p").first().css("border-color", "blue"); //désigne le 1er paragraphe
        // $("p").last().css("border-color", "green"); //désigne le dernier paragraphe
        // $("p").eq(2).css("border-color", "blue"); // désigne le paragraphe 3
        $("p").filter(".special").css("border-color", "blue");
        $("p").not(".special").css("border-color", "green"); 

    });

});