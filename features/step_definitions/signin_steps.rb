Given("I access the Signin page") do
    @signin_page.load
end
  
When("try to login with {string}") do |data|
    file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/users.yaml"))
    @data = file[data]
    @signin_page.fill_form(@data)
    @signin_page.click
    sleep 3
end