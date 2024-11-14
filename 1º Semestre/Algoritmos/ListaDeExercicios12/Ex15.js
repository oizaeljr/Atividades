// 15) Crie uma função que receba dois números como parâmetros e retorne "múltiplo" 
// se o primeiro for múltiplo do segundo, ou "não múltiplo" caso contrário.
function multiplo(x, y) {
    if (x % y == 0) {
        return 'múltiplo'
    }
    return 'não múltiplo'
}
console.log(multiplo(3, 2))