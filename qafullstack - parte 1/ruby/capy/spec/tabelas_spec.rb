describe 'Tabelas', :tab do
    
    before(:each) do
        visit 'tables'
    end 

    it ' deve exibir salario de stark' do
        atores = all('table tbody tr')
        stark = atores.detect { |ator| ator.text.include?('Robert Downey Jr') }
        puts stark.text

        expect(stark.text).to include '$ 10.000.000'

    end

    it 'deve exibir o salario do Vin diesel' do
        diesel = find('table tbody tr', text:'@vindiesel')
        expect(diesel).to have_content '$ 10.000.000'

    end

    it 'deve exibir o filme velozes' do
        diesel = find('table tbody tr', text: '@vindiesel')

        movie = diesel.all('td')[2].text
        expect(movie).to eql 'Velozes e Furiosos'

    end

    it 'deve exibir insta Chris Evans' do
        evans = find('table tbody tr', text: 'Chris Evans')
        insta = evans.all('td')[4].text

        expect(insta).to eql '@teamcevans'
    end

    it 'deve selecionar Chris Pratt pra edicao' do
        pratt = find('table tbody tr', text: 'Chris Pratt')
        pratt.find('a', text: 'edit').click

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
    end

    it 'deve selecionar Chris Pratt pra remocao' do
        pratt = find('table tbody tr', text: 'Chris Pratt')
        pratt.find('a', text: 'delete').click

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
    end


 
end