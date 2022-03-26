var fruits = ["Pomme", "Banane", "Organge", "Citron"];

//console.log(fruits.length);
//console.log(fruits);
//console.log(fruits[0]);

fruits.push("Kiwi");

for(var i=0; i< fruits.length ; i++)
{
    console.log(fruits[i]);
}

fruits.pop(); // Enlève la dernière valeur

for(var i=0; i< fruits.length ; i++)
{
    console.log(fruits[i]);
}

var agrumes = fruits.slice(2,4); // prend les éléments de 2 à 3!!
console.log(agrumes);


var myArray = ["Pomme", 15, true];
console.log(myArray);

var myArray2 = [[0,1], [5,7,8], [12,18]];
console.log(myArray2[2][0]);