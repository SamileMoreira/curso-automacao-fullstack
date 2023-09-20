require "report_builder"
require "date"

Before do
  @login_page = LoginPage.new
  @movie_page = MoviePage.new
  @sidebar = SideBarView.new

  #page.driver.browser.manage.window.maximize
  #page.current_window.resize_to(1440, 900) verificar o minimo aceitavel pra tela.

end

Before("@login") do
  user = CONFIG["users"]["cat_manager"]
  @login_page.go #para visitar a pagina
  @login_page.with(user["email"], user["pass"]) #para fazer o login
end

After do
  temp_shot = page.save_screenshot("log/temp_shot.png")
  screenshot = Base64.encode64(File.open(temp_shot, "rb").read)
  embed(screenshot, "image/png", "Screenshot")
end

d = DateTime.now
@current_date = d.to_s.tr(":", "-")

at_exit do #executa depois que o cucumber finaliza os testes
  ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/" + @current_date
    config.report_types = [:html]
    config.report_title = "NinjaFlix - WebApp"
    config.compress_image = true
    config.additional_info = { "App" => "Web", "Data de Execução" => @current_date }
    config.color = "indigo"
  end
  ReportBuilder.build_report
end
