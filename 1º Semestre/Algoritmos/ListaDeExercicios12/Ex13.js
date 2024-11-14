// 13) Crie uma função que receba um número como parâmetro e retorne a soma de 
// todos os números ímpares menores que ele.
function calcular(x) {
    var soma = 0
    for(var contador = x; contador >= 0; contador--){
        if (contador % 2 != 0) {
            soma+= contador
        }
    }
    return soma;
}
console.log(calcular(5))