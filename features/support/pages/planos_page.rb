
class PlanosPage
    include Capybara::DSL
    
    def menu_planos
        click_link('Planos')
    end

    def h1_title
        find('.css-bn4p1g').text
    end
end  