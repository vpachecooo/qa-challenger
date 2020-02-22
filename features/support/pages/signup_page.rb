
class SignupPage
    include Capybara::DSL
  
    def load
        visit 'https://app.getlabor.com.br/cadastrar'
    end
  
    def click
        click_button('Cadastrar')
    end

    def message
        find('.css-1vg15mw')
    end
end