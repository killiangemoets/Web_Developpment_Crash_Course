
// var objet = {
//     propertyName1: propertyValue1, 
//     propertyName2: propertyValue2,
//     method1: function(){

//     }
// };

var dog = {
    name: "Choupette", 
    color: "White",
    age: 4
};

// 2 possibiliés d'affichage
console.log(dog.age);
console.log(dog["name"]);

for(var property in dog)
{
    console.log(dog[property]);
}
// ---------------------- //
var cat = new Object();
cat.name = "Cibou";
cat.color = "Grey";
cat.age = 14;
cat.miaule = function(number){
    while(number>0)
        {
    console.log(number.toString() + " Miaouuu");
    number--;
        }
};

cat.miaule(4);

for(var property in cat)
{
    console.log(cat[property]);
    // if (property === "age") //pour ne pas afficher la fonction
    // {
    //     break;
    // }
}