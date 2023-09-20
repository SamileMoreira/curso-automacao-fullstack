var avengers = new Array();

var vingadores = ['Capitã Marvel', 'Ms Marvel', 'Viuva Negra']
console.log(vingadores)
console.log(typeof vingadores)

vingadores.push('Mulher Aranha')
console.log(vingadores)

//remove o último registro do array vingadores.pop(); 
//remove o primeiro registro do array vingadores.shift(); 

var indice = vingadores.indexOf('Mulher Aranha')
vingadores.splice(indice)
console.log(vingadores)

vingadores.push('Capitão América')

vingadores.push('Hulk')

var novosvingadores = ['Mulher Aranha', 'Pantera Negra', 'Homem de Ferro']
var result = vingadores.concat(novosvingadores)

 console.log(result)