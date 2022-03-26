
// Le if
var speed = 50;
if (speed<=80)
{
    if (speed < 50)
       {
         console.log("Tu peux accélérer");
       }
    else {
        console.log("Tu roules à la bonne vitesse");
    }
}
else if (speed < 100)
{
    console.log("Ralenti un peu ")
}
else
{
    console.log("Tu roules beaucoup trop vite!");
}


// Le switch
var fav_color = "yellow";
switch(fav_color)
{
    case "yellow":
    case "blue":
        console.log("J'adore le bleu et le jaune");
        break;
    case "red":
        console.log("J'aime pas le rouge");
        break;
    default:
        console.log("Choisi bleu ou rouge");
}
