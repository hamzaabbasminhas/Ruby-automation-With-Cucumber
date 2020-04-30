@edittuition
Feature: Edit Tuition

  Scenario: User perform edit tuiton action
    And User login the application
    And User Clicks on edit button of a tuition
    And User edits title of the tuition
    And User press save button
    Then System verifies whether Title is edited or not
