// 1) Crie uma função que receba dois números como parâmetros e retorne o maior deles.

function VerificarMaior(x, y) {
    var maior = x;
    if (y > x) {
        maior = y
    }
    return maior;
}

console.log(VerificarMaior(21,20))