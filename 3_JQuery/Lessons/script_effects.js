// CECI MARCHE GRACE AU FICHIER jquery.js

//$(document).ready(function(){ // Permet de lancer la fonction quand l'élément html est prêt
$(function(){  //ceci est un raccourci pour écrire la ligne du dessus

        // $("#p1").click(function(){
        //     $("#p5").hide("slow");
        // });
         
        // $("#p1").click(function(){
        //     $("#p5").hide(5000); //Le paragraphe va prendre 5sec à disparaitre
        // });

        // $("#p1").click(function(){
        //     $("#p2").hide(3000, function(){ // Ceci est un call back
        //         $("#p3").hide(3000, function(){
        //             $("#p4").hide(3000);
        //         });
        //     });
        // });

        // $("#p1").click(function(){
        //     $("#p5").toggle(); //si visible -> invisible, si invisible -> visible
        // });

        // $("#p5").fadeOut(); //Disparition floutée, joue sur l'oppacité
        // $("#p1").click(function(){
        //     $("#p5").fadeIn(3000); //Apparition floutée, joue sur l'oppacité
        // });

        // $("#p1").click(function(){
        //     $("#p5").fadeToggle(3000); //Apparition floutée, joue sur l'oppacité
        // });

        $("#p1").click(function(){
            $("#p5").fadeTo(3000, 0.5); //Rends oppaque à 50%
        });


});