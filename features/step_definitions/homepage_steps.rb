Given("I access the homepage") do
    @homepage_page.load
end

When("I gets the title of the page") do
    @homepage_page.take_title
end

Then("should be equal {string}") do |title|
    expect(@homepage_page.take_title).to eql title
end

When("I gets the pricing on the homepage") do
    @homepage_page.take_pricing
end

Then("should be {string}") do |pricing|
    expect(@homepage_page.take_pricing).to have_text pricing
end