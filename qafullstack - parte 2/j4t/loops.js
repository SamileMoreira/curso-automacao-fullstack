//Loops ou laços de repetição

//for é movido por declaração

for(var a = 0; a < 10; a++){
    console.log(`Repetindo porque ${a} é menor que 10`)
}

//while trabalha por condição - enquanto for verdadeira ele executa
var i =0;

while(i <= 10){
    console.log(`Repetindo porque ${i} é menor ou igual a 10`)
    i++
}

var avengers = ['Ironman', 'Thor', 'Spiderman', 'Captian America', 'Gwen Stace', 'Black Panther']
avengers.forEach(function(value, key){
    console.log(`${value} na posição ${key}`)
})
