/* Remarque : dans la console, les strings s'affichent en noir et les nombres en bleu */

var namee = "John"; /* variable de type string = chaine de caractère, 
                   peut être écrite entre ' ' ou " ", c'est idem. */
var x = 12;        /* variable detype nombre */
var y = 25.63;

console.log(namee);
console.log(x);
console.log(y);

/* Passage d'un number à un string */
var xToString = x.toString();
console.log(xToString);

/* Longueur de la variable namee (de type string) */
var nameeLenght = namee.length;
console.log(nameeLenght);

/* Passage d'un string à un nombre */
var zString = "2.64";
console.log(zString);
var zNumber = parseInt(zString); /* Int = integer -> pour nombre entiér !!! */
console.log(zNumber);
var zNumber2 = parseFloat(zString); /* Float -> pour garder les décimales !!! */
console.log(zNumber2);


var myString = "Hello John";
console.log(myString);

/* Index */
var position_john = myString.indexOf("John");
console.log(position_john);

/* Replace */
var replace_john = myString.replace("John","Tim");
console.log(replace_john);

/* Addition */
var string1 = "Hello";
var string2 = "Luc";
var add_strings = string1 + " " + string2;
console.log(add_strings);