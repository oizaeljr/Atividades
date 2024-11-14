// 6) Crie uma função que receba um número como parâmetro e retorne "divisível por 3" 
// se for divisível por 3, caso contrário, retorne "não divisível por 3".
function divisivelTres(x) {
    if (x % 3 == 0) {
        return 'Divisível por 3'
    } else {
        return 'Não divisível por 3'
    }
}
console.log(divisivelTres(4))