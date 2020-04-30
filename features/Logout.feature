@logout
Feature: Logout

  Scenario: User perform Logout action
    And User login the application
    And User press logout button
    Then System verifies the logout is done successfully or not