#um objeto com uma coleção de dados com chave e valor parecida com o array
#no array é com indice e no hashe é com chave e valor

carro = Hash[nome: 'Carro', marca: 'Peugeout', cor: 'Branco'] 

puts carro[:marca]

carro[:modelo] = 208

puts carro