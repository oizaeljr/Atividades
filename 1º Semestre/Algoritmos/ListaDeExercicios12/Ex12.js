// 12) Crie uma função que receba dois números como parâmetros e retorne o resultado de uma subtração, 
// se o primeiro número for maior, ou o resultado de uma soma, se o segundo número for maior.

function calcular(x, y) {
    if (x > y) {
        return x - y
    } else {
        return x + y
    }
}
console.log(calcular(34, 22))