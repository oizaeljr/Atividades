// 9) Crie uma função que receba um número como parâmetro e retorne "primo" 
// se for um número primo, ou "não primo" caso contrário.
function primo(x) {
    var resposta = 0;
    for(var contador = 2; contador <= 9; contador++){
        if (x % contador == 0) {
            resposta++
        }
    }
    if (resposta > 0) {
        return 'Não primo';
    } else {
        return 'Primo';
    }
}
console.log(primo(210))