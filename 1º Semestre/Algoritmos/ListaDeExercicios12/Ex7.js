// 7) Crie uma função que receba uma string como parâmetro e retorne o número de vogais que ela contém.
function vogais(x) {
    var palavra = x.toString()
    var vogal = 0
    for(var contador = 0; contador < palavra.length; contador++){
        if (palavra[contador] == 'a' || palavra[contador] == 'e' || palavra[contador] == 'i' || palavra[contador] == 'o' || palavra[contador] == 'u') {
            vogal++
        }
    }
    return vogal;
}

console.log(vogais('aae'))