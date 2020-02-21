Given("I access the homepage") do
    @homepage_page.load
end

When("I gets the title of the page") do
    @homepage_page.take_title
end

Then("should be equal {string}") do |title|
    expect(@homepage_page.take_title).to eql title
end