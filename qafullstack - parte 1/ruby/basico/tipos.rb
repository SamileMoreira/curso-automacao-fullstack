# TIPOS RUBY - ele é definido quando a variavel rcebe o valor

produto = 'Celular'
preco = 1.500
quantidade = 10
disponivel = true

#Para saber o tipo da variavel é possível imprimindo o metodo da variavel, conforme o exemplo abaixo: 

puts produto.class
puts preco.class
puts quantidade.class
puts disponivel.class

puts produto
puts preco
puts quantidade
puts disponivel

#Se trocar o tipo o valor da variavel e ela tiver um outro tipo, o ruby altera e atribui imediatamente o novo tipo,
#no exemplo abaixo a variavel quantidade era inteiro e foi declarada um valor em string

quantidade = '9'

