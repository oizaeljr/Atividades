// 2) Crie uma função que receba um número como parâmetro e retorne "par" se o número for par, ou "ímpar" se for ímpar.
function VerificarPar(x) {
    if (x % 2 == 0) {
        return 'par';
    } else {
        return 'impar';
    }
}
console.log(VerificarPar(10))