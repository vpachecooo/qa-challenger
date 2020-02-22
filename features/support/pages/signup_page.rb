
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

    def ar_message
        find('.e1w0gikl6').text
    end

    def fill_form(data)
        # within('.css-1vg15mw') do
        fill_in 'name', with: data['name']
        select(data['segment'], from: 'segment')
        fill_in 'email', with: data['email']
        fill_in 'password', with: data['password']
        # end
    end
end