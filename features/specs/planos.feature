#language: en

@planos
Feature: Access Page Planos
    Checks if page Planos opens successfully

    Scenario: Check functionality of the "planos" menu
        Given I access the homepage
        When I click in the menu Planos
        Then redirects to page "Planos"