describe 'Alertas de JavaScript', :alerta do 

    before(:each) do
        visit 'javascript_alerts'
    end 

    it 'alerta' do 

        click_button 'Alerta'
        mensagem = page.driver.browser.switch_to.alert.text
        expect(mensagem).to eql 'Isto é uma mensagem de alerta'
        sleep 3

    end 

    it 'confirma - sim' do 
        click_button 'Confirma'
        mensagem = page.driver.browser.switch_to.alert.text
        expect(mensagem).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'
        sleep 2

    end

    it 'confirma - não' do 
        click_button 'Confirma'
        mensagem = page.driver.browser.switch_to.alert.text
        expect(mensagem).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
        sleep 2
    end

    it 'prompt' , :prompt do
        accept_prompt(with: 'Samile') do
            click_button 'Prompt'
            sleep 2
        end
        expect(page).to have_content 'Olá, Samile'
        sleep 2
    end

    it 'dismiss prompt' , :dismiss_prompt do
        click_button 'Prompt'

        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Olá, null'
        sleep 2

    end


end