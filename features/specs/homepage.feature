#language: en

@homepage
Feature: Access Homepage
    checks if homepage opens successfully

    Background: Access
        Given I access the homepage

    Scenario: Should have the right title
        When I gets the title of the page
        Then should be equal "Labor - Controle de Horas"