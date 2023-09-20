describe 'Mouse hover', :hovers do 

    before(:each) do
        visit 'hovers'
    end


    it 'quando passo o mouse sobre o Blade' do
        card = find('img[alt = Blade]')
        card.hover

        expect(page).to have_content 'Nome: Blade'
 

    end

    it 'quando passo o mouse no Pantera Negra' do
        card = find('img[alt = "Pantera Negra"]')
        card.hover

    expect(page).to have_content 'Nome: Pantera Negra'

    end

    it 'quando passo o mouse no Homem Aranha' do
        card = find('img[alt = "Homem Aranha"]')
        card.hover

    expect(page).to have_content 'Nome: Homem Aranha'

    # o ^ é usado pra verificar se começa com determinada palavra
    # o $ é usado pra verificar se termina com determinada palavra
    # o * é usado pra verificar se contem  com determinada palavra

    end

    after(:each) do
        sleep 2
    end
end


