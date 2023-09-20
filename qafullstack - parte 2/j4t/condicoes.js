
var idade = prompt("Qual sua idade?");

if(idade >=18){
   console.log("Posso ir no show. Compre o ingresso!")
}else if(idade >= 12){
   console.log("Pode ir na Gincana!")
}else{
   console.log("Pode ir ao Parque!")
}

var ingresso =  prompt("Qual seu ingresso?");
switch(ingresso){
   case 'vip': 
       console.log("Ficará no camarote!")
       break;
   case 'premium':
       console.log('Ficará na pista premium')
       break;
   case 'comum':
       console.log('Ficará na arquibancada')
       break;
   default:
       console.log('Tipo de ingresso inválido')
       break;

}