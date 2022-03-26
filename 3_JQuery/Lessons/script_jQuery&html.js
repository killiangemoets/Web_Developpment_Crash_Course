// CECI MARCHE GRACE AU FICHIER jquery.js

//$(document).ready(function(){ // Permet de lancer la fonction quand l'élément html est prêt
$(function(){  //ceci est un raccourci pour écrire la ligne du dessus
    
    $("#start").click(function(){

    var myVar = $("#p1").text();
    var myVar2 = $("div").text();
    var myVar3 = $("div").html();

    console.log(myVar);
    console.log(myVar2);
    console.log(myVar3);


    var myVar4 = $("#myInput").val();
    console.log(myVar4);

    var myVar5 = $("div").attr("style");
    console.log(myVar5);

    //$("#p1").text("Voila mon nouveau texte");
    $("#p1").html("Voila mon <b>nouveau</b> texte");
    $("#myInput").val("Nouvelle valeur");
    $("div").attr("style","background: green");

    $("div").append("<p>Mon nouveau paragraphe 1</p>");
    $("div").prepend("<p>Mon nouveau paragraphe 2</p>");
    $("div").after("<p>Mon nouveau paragraphe 3</p>");
    $("div").before("<p>Mon nouveau paragraphe 4</p>");

    $("#p2").remove();


    //$("div").remove; // supprime la div du code html
    //$("div").empty; // vide la div mais elle existe tjrs



    });

});