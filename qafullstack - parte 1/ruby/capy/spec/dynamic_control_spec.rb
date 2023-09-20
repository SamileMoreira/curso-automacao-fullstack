describe 'Controle Dinamico', :dc do 
    before(:each) do
        visit 'dynamic_controls'
    end


    it 'quando habilita o campo' do

        #quando tem a propriedade disabled true o campo está desabilitado
        #quando não tem a propriedade disabled o campo está habilitado

        #deve retornar true para a propriedade existente
         
        res = page.has_field? 'movie', disabled: true
        puts res

        click_button 'Habilita'
        sleep 5

         #deve retornar true para a propriedade inexistente, pois quando habilitar o botão o disabled deixará de existir
         #e será considerado falso, por isso o retorno do disabled: false deve retornar como verdadeiro
         
        res = page.has_field? 'movie', disabled: false
        puts res

    end

    #it 'quando desabilita o campo' do

      #res = page.has_field? 'movie', disabled: true
        #puts res
        
       # if(page.has_field? 'movie' disabled: false)
        #    click_button 'Habilita'

       # else
         #  click_button 'Desabilita'
       ## sleep 5
        #res = page.has_field? 'movie',  disabled: false
        #puts res

   # end
end
