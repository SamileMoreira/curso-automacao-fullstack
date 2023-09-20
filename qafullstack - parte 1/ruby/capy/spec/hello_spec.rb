describe "Meu primeiro script", :hello do

    it "visitar a pagina" do
        visit ""
        expect(page.title).to eql "Training Wheels Protocol"

        page.save_screenshot('log/hello.png')
        sleep 3
    end

end
