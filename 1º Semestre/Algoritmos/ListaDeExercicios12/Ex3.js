// // 3) Crie uma função que receba um número como parâmetro e retorne 
// "positivo" se o número for maior que zero, "negativo" se for menor que zero, ou "zero" se for igual a zero.

function VerificaPositividade(x) {
    if (x == 0) {
        return 0;
    } else if (x > 0) {
        return 'positivo'
    } else {
        return 'negativo'
    }
}
console.log(VerificaPositividade(-1))