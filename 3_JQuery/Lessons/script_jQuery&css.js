// CECI MARCHE GRACE AU FICHIER jquery.js

//$(document).ready(function(){ // Permet de lancer la fonction quand l'élément html est prêt
$(function(){  //ceci est un raccourci pour écrire la ligne du dessus
    
    // $("#but1").click(function(){
    //     $("#p1, #p2").addClass("red");
    // });
    // $("#but2").click(function(){
    //     $("#p1, #p2").removeClass("red");
    // });

    // $("#but1").click(function(){
    //     $("#p1, #p2").toggleClass("red bold");
    // });

    // $("#but1").click(function(){
    //     $("#p1, #p2").css("color", "red");
    // });

    // $("#but1").click(function(){
    //     console.log($("#p1").css("color"));
    // });

    $("#but1").click(function(){
        $("#p1").css({
            "color": "red",
            "font-weight": "bold",
            "background": "yellow"
        });
    });

    $("#but1").click(function(){
        console.log( $("#but1").width() );
        $("#but2").width(150);
        $("#but2").height(150);
    });



});