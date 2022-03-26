function multiply(number1, number2, number3)
{
    var resultMultiply = number1*number2*number3;
    /* si on enlève le var, la variable resultMultiply
    devient une variable globale! */
    return resultMultiply;
}


var a = 5;
var b = 6;

var result = multiply(a,b,a);

console.log(result);
// console.log(resultMultiply);

