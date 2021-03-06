Feature: Login Page operations

  As a user
  so that I can login to my account
  I want the login page to display fields that I can enter username and password

  Scenario: Username & Password are correct
    Given I'm on the login page
    | email                 | password|
    | abhimisra92@gmail.com | abhishek|
    When I enter the username and password correctly
    Then I should be able to see the user dashboard page

  Scenario: Username is blank
    Given I'm on the login page
    | email                 | password|
    | abhimisra92@gmail.com | abhishek|
    When I enter the password and leave the username field blank
    Then I should be able to see a username error message in the same page

  Scenario: Password is blank
    Given I'm on the login page
    | email                 | password|
    | abhimisra92@gmail.com | abhishek|
    When I enter the username and leave the password field blank
    Then I should be able to see a password error message in the same page


