
class HomepagePage
    include Capybara::DSL
  
    def load
        visit ''
    end
  
    def take_title
        page.title
    end

    def take_pricing
        find(".css-16zrvmf p strong")
    end
end  