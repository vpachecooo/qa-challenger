Given("I access the Signup page") do
    @signup_page.load
end

When("I click in the button {string} with empty fields") do |string|
    @signup_page.click
end
  
Then("presents validation message {string} in the fields") do |message|
    expect(@signup_page.message).to have_text message
end

When("try to register user with the {string}") do |data|
    file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/users.yaml"))
    @data = file[data]
    @signup_page.fill_form_er(@data)
    @signup_page.click
    sleep 3
end

When("try to register user with {string}") do |data|
    file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/users.yaml"))
    @data = file[data]
    @signup_page.fill_form(@data)
    @signup_page.click
    sleep 3
end

Then("presents validation {string}") do |message|
    expect(@signup_page.ar_message).to eql message
end

Then("redirects to {string}") do |url|
    expect(page.current_url).to eql url
    # @signup_page.logout
end