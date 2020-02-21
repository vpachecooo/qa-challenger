
class HomepagePage
    include Capybara::DSL
  
    def load
        visit ''
    end
  
    def take_title
        page.title
    end
end  