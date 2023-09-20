describe 'Login com cadastro', :login3 do
    
    before(:each) do
        visit 'access'
    end 

    it 'login com  com sucesso' do
        
        within('#login') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'

        end

        click_button 'Entrar'
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end

    it 'cadastro com  com sucesso' do

        within('#signup') do
            find('input[name=username]').set 'Samile'
            find('input[name=password]').set '123456!'

        end

        click_link 'Criar Conta'
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 3


    end
    
end