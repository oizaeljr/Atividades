// 10) Crie uma função que receba um número como parâmetro e retorne o seu fatorial.

// Ex: 5 -> 120 | 6 > 720 ...

function fatorial(x) {
    var conta = x
    for(var contador = x-1; contador >= 1; contador--){
        conta*= contador
    }
    return conta;
}
console.log(fatorial(5))