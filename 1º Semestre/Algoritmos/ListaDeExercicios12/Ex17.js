// 17) Crie uma função que receba um número e um caractere como parâmetros e 
// retorne o caractere repetido o número de vezes especificado.
function repetir(x, y) {
    var numero = x;
    var caractere = y.toString()
    var mensagem = ''
    for(var contador = 1; contador <= numero; contador++){
        mensagem += `${caractere} \n`;
    }
    return mensagem;
}
console.log(repetir(6, 'p'))