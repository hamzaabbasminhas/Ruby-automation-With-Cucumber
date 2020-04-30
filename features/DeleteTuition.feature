@deletetuition
Feature: Delete

  Scenario: User perform delete tuition action
    And User login the application
    And User deletes a tutiton
    Then System verifies the delete is done successfully or not