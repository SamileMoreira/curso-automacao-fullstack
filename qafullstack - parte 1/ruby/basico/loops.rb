
#TIMES
5.times do 
    puts 'Testando o loop times'
end

5.times do |i|
    puts 'Testando o loop times com interação, repetindo a mensagem ' + i.to_s + ' vez(es).'
end

#WHILE
inicial = 0

while inicial <= 10 do
    puts 'Repetindo a mensagem ' + inicial.to_s + ' vez(es) para testar o WHILE.'
    inicial += 1
end

#FOR
for valor in(0...10)
    puts 'Repetindo a mensagem ' + valor.to_s + ' vez(es) para testar o FOR.'
end

#ARRAYS

vingadores = ['Capitão América', 'Homem de Ferro', 'Hulk', 'Homem Aranha', 'Thor']

vingadores.each do |v|
    puts v
end

