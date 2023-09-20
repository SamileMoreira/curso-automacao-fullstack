begin
    #devo tentar algo
    file = File.open('./ola.txt')
    if file
        puts file.read
    end

rescue Exception => e
    #possivel erro
    puts e
    puts e.message
    puts e.backtrace #diz onde que deu o erro no código

end
#equivalente ao try cath do JAVA - TRATAMENTO DE EXCEÇÕES


def soma(n1, n2)
    n1 + n2

rescue Exception => e
    puts "Erro ao executar a soma"

end


soma('10', 6)