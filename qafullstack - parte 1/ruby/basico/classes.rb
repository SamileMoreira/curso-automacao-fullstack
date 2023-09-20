#RUby é PURAMENTE orientada a objeto, TUDO SÃO OBJETOS(métodos, classes, variavéis, TUUUDO)
#Classe possui atributos, métodos, caracteristicas de ações

class Carro

#COM ESSE ACESSOR É POSSÍVEL LER E DEFINIR VALOR AO ATRIBUTO.
    attr_accessor :nome

    def ligar
        puts 'O Carro pode ser iniciado pelo motorista'
    end

end

peugeout = Carro.new
peugeout.nome = 'Peugeout'

puts peugeout.nome
peugeout.ligar