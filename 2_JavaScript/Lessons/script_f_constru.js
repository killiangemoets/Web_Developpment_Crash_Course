
function Dog(name, color, age)
{
    this.name = name;
    this.color = color;
    this.age = age;
    this.aboie = function()
    {
        console.log("Wouaf, I'm "+ this.name + "!");
    }
    
}

var petitCaniche = new Dog("Choupette", "White", "1");
var grosPitbull = new Dog("Rex", "Black", "4");

console.log(petitCaniche);
console.log(grosPitbull);

petitCaniche.aboie();
grosPitbull.aboie();