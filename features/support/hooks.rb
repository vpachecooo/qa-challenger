Before do  
    # page.current_window.resize_to(1300, 800)
    page.current_window.maximize

    @homepage_page = HomepagePage.new
end
  
After do |scenario|
    screenshot = page.save_screenshot("log/screenshots/#{scenario.__id__}.png")
    embed(screenshot, "image/png", "Screenshot")
end  