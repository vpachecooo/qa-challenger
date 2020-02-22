
class SigninPage
    include Capybara::DSL
  
    def load
        visit 'https://app.getlabor.com.br/entrar'
    end
  
    def click
        click_button('Entrar')
    end

    def fill_form(data)
        fill_in 'email', with: data['email']
        fill_in 'password', with: data['password']
    end
end