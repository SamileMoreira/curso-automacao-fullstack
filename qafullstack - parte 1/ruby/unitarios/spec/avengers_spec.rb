
class AvengersHeadQuarter

    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)

    end
end

#TDD - desenvolvimento guiado por teste
describe AvengersHeadQuarter do


    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    end

    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Ironman')
        expect(hq.list).to include('Thor') #Verifica se possui o item informado na lista
    end

    it 'deve verificar se contém um lista com vingadores' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Ironman')

        res = hq.list.size > 0

        expect(hq.list.size).to be > 2 #Verifica o tamanho da lista
        expect(res).to be true
    end

    it 'deve verificar se Thor e o primeiro da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Ironman')

        expect(hq.list).to start_with('Thor')
    end

    it 'deve verificar se Iroman é o último da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Ironman')

        expect(hq.list).to end_with('Ironman')
    end

    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Peter Parker/)
        expect(avenger).not_to match(/Sam Moreira/)
    end

    it 'deve verificar se o Vingador não é nulo e não é falso' do

        avenger = 'Steve Roger'

        expect(avenger).to be_truthy

    end

end