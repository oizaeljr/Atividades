// 14) Crie uma função que receba três números como parâmetros e retorne o maior valor entre eles.
function maior(x, y, z) {
    if (x > y && x > z) {
        return x;
    } else if (y > x && y > z) {
        return y;
    }
    return z;
}
console.log(maior(8, 6, 46))