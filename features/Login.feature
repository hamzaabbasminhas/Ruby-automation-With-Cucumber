@login
Feature: Login

  Scenario: User perform Login action
    And User enters login details
    And User clicks on login
    Then System verifies the login is done successfully or not