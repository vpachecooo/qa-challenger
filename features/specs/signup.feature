#language: en

@signup
Feature: Access Page Signup
    Checks if the page of signup opens successfully
    and presents the form

    Background: Access Signup page
        Given I access the Signup page

    @mandatory_fields
    Scenario: Validation of mandatory fields
        When I click in the button "Cadastrar" with empty fields
        Then presents validation message "Campo obrigatório" in the fields

    @existing_email
    Scenario Outline: Signup of existent email
        The user want to signup with an existing user email

        When try to register user with <data>
        Then presents validation <message>

        Examples:
            | data    | message               |
            | "user1" | "Already registered!" |