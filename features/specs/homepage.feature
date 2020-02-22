#language: en

@homepage
Feature: Access Homepage
    Checks if homepage opens successfully

    Background: Access
        Given I access the homepage

    @homepage_title
    Scenario Outline: Should have the right title
        When I gets the title of the page
        Then should be equal <title>

        Examples:
            | title |
            | "Labor - Controle de Horas" |

    @homepage_pricing
    Scenario Outline: Check Initial pricing on the homepage
        When I gets the pricing on the homepage
        Then should be <pricing>

        Examples:
            | pricing |
            | "Teste o Labor por 30 dias gratuitamente!" |