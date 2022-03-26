// CECI MARCHE GRACE AU FICHIER jquery.js

//$(document).ready(function(){ // Permet de lancer la fonction quand l'élément html est prêt
$(function(){  //ceci est un raccourci pour écrire la ligne du dessus
    
    //$(selector).animate(objet, vitesse, callback_function)

    // $("#start").click(function(){
    //     $("div").animate({left: '600px'}, 3000, function(){
    //         $("div").hide();
    //     });

    // });

    // $("#start").click(function(){
    //     $("div").animate({
    //         left: '600px',
    //         opacity: 0.2,
    //         width: '+=150px',
    //         height: '200px'
    //     }, 5000);
    // });

    $("#start").click(function(){
        $("div").animate({left: '600px'}, 3000);
        $("div").animate({opacity: 0.2}, 3000);
        $("div").animate({width: '200px'}, 3000);
        $("div").animate({height: '200px'}, 3000);
    });

    $("#stop").click(function(){
        //$("div").stop(); //n'arrête que l'animation sur laquelle on est
        //$("div").stop(true); //arrête toutes les animations
        $("div").stop(true, true); //arrête l'animation et va directement à la fin de l'animation
    });


    // Autre effet pas encore vu avant :
    $("#start").click(function(){
        $("div").slideUp(5000).slideDown(5000).fadeOut(3000).fadeIn(3000); 
        // On peut enchainer les animations
    });


});