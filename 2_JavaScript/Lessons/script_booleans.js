var myBoolean = true; // variable boolean est true ou false
console.log(myBoolean);


// Opérateurs de comparaison
var x= 5;
var Boolean1 = (x===5);
var Boolean2 = (x!==5);
var Boolean3 = (x==="5"); // Est-ce que x est strictement égale à 5 en format string?
var Boolean4 = (x=="5"); // Est-ce que x vaut 5 (en string ou nombre), ici ne compare pas le type de variable
var Boolean5 = (x>=12);
console.log(Boolean1);
console.log(Boolean2);
console.log(Boolean3);
console.log(Boolean4);
console.log(Boolean5);

var y = 12;
var Boolean6 = (x>3 && y<10);
console.log(Boolean6);
var Boolean7 = (x>3 || y<10);
console.log(Boolean7);


console.log(!true); // Afficher l'inverse
console.log(!false);