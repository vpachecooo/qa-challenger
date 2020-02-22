When("I click in the menu Planos") do
    @planos_page.menu_planos
end
  
Then("redirects to page {string}") do |planos|
    expect(@planos_page.h1_title).to eql planos
end