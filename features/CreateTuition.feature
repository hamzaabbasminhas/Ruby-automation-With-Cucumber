@createtuition
Feature: Create Tuition

  Scenario: User perform create tuition action
    And User login the application
    And User clicks on create tuition button
    And User enters all the details of tuition
    And User clicks on save
    Then System verfies whether the tuition is created successfully or not

