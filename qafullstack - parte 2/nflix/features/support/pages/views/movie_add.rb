class MovieAdd
  include Capybara::DSL

  def create(movie)
    find("input[name=title]").set movie["title"]

    select_status(movie["status"]) unless movie["status"].empty?

    find("input[name=year]").set movie["year"]
    find("input[name=release_date]").set movie["release_date"]

    add_cast(movie["cast"])

    find("textarea[name=overview]").set movie["overview"]

    upload(movie["cover"]) unless movie["cover"].empty?

    find("#create-movie").click
  end

  def add_cast(cast) #metodo para adicionar os atores
    actor = find(".input-new-tag")
    cast.each do |a| #como é um array ele tem que interar
      actor.set a
      actor.send_keys :tab
    end
  end

  def alert
    alert = find(".alert").text
  end

  def upload(file) #fazer upload de arquivo
    cover_file = File.join(Dir.pwd, "features/support/fixtures/cover/" + file)
    cover_file = cover_file.tr("/", "\\") if OS.windows?
    #essa conversão só precisa ser feita no windows e linux

    Capybara.ignore_hidden_elements = false
    attach_file("upcover", cover_file)
    Capybara.ignore_hidden_elements = true
  end

  def select_status(status)
    #automação do combobox costumizado
    find("input[placeholder=Status]").click
    find(".el-select-dropdown__item", text: status).click
  end
end
