#language: en

@signup
Feature: Access Page Signup
    Checks if the page of signup opens successfully
    and presents the form

    Scenario: Validation of mandatory fields
        Given I access the Signup page
        When I click in the button "Cadastrar" with empty fields
        Then presents validation message "Campo obrigatório" in the fields