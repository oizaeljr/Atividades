// 5) Crie uma função que receba um número como parâmetro e retorne a quantidade de dígitos que ele possui.
function quantidadeDigitos(x) {
    var tamanho = x.toString().length
    return tamanho;
}
console.log(quantidadeDigitos(1100))