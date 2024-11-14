// 18) Crie uma função que receba dois números como parâmetros e retorne "próximos" 
// se a diferença entre eles for menor que 5, ou "distantes" caso contrário.
function proximidade(x, y) {
    var maior = y;
    var menor = x;
    if (x > y) {
        maior = x
        menor = y
    } 
    var diferenca = maior-menor
    if (diferenca < 5) {
        return 'próximos';
    } 
    return 'distantes';
}
console.log(proximidade(5, 9))