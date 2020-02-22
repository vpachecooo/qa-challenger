Given("I access the Signup page") do
    @signup_page.load
end

When("I click in the button {string} with empty fields") do |string|
    @signup_page.click
end
  
Then("presents validation message {string} in the fields") do |message|
    expect(@signup_page.message).to have_text message
end