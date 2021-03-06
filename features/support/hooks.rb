Before do  
    # page.current_window.resize_to(1300, 800)
    page.current_window.maximize

    @homepage_page = HomepagePage.new
    @planos_page = PlanosPage.new
    @signup_page = SignupPage.new
    @signin_page = SigninPage.new
end
  
After do |scenario|
    screenshot = page.save_screenshot("log/screenshots/#{scenario.__id__}.png")
    embed(screenshot, "image/png", "Screenshot")
end