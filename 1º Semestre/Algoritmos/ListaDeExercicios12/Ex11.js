// 11) Crie uma função que receba um número como parâmetro e retorne "positivo e par" 
// se for maior que zero e par, ou "negativo ou ímpar" caso contrário.
function Verificar(x) {
    if (x > 0 && x % 2 == 0) {
        return 'positivo e par'
    } else {
        return 'negativo ou ímpar'
    }
}
console.log(Verificar(34))