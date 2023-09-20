class Conta

    #COM ESSE ACESSOR É POSSÍVEL LER E DEFINIR VALOR AO ATRIBUTO.
    attr_accessor :saldo 

    #INITIALIZE É O MÉTODO CONSTRUTOR DO RUBY
    def initialize
        self.saldo = 0.0
    end

    def deposita(valor)
        self.saldo += valor
        #self é = ao this do Java

        puts "Depositando a quantia de #{valor} reais." 
        #Uma interpolação de String pra conseguir concatenar o valor sem precisar converter
     end

end

c = Conta.new

c.deposita(100.00)
puts c.saldo
