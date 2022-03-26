// CECI MARCHE GRACE AU FICHIER jquery.js

//$(document).ready(function(){ // Permet de lancer la fonction quand l'élément html est prêt
$(function(){  //ceci est un raccourci pour écrire la ligne du dessus

        // $("#p1").click(function(){
        //     $("#p5").hide();
        // });

        // $("#p1").on("click",function(){ //idem que fonction précédente
        //     $("#p5").hide();
        // });

        // $("#p2").mouseenter(function(){
        //     $("#p4").hide();
        // });

        // $("#p2").mouseleave(function(){
        //     $("#p4").show();
        // });
    
        $("#p2").hover(function(){ //idem que les 2 fonctions précédentes
            $("#p3").hide();
        },
        function(){
            $("#p3").show();
        });

        $("#p1").on({
            mouseenter: function(){
                $("#p5").hide();
            },
            mouseleave: function(){
                $("#p5").show();
            },
            click: function(){
                $("#p4").hide();
            }
        });

});