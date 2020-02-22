#language: en

@signin
Feature: Access Page Signin
    Checks if the page of signin opens successfully
    and allows to login

    @login
    Scenario Outline: Signin with an existent user
        Want to signin with an existing user

        Given I access the Signin page
        When try to login with <data>
        Then redirects to <url>

        Examples:
            | data    | url                                          |
            | "user3" | "https://app.getlabor.com.br/app/main/tasks" |