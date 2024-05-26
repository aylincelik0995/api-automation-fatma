Feature: Multiplication API

Background: set username and password
Given I have the username "testUser" and password "testPass"

  Scenario: Multiplication
    Given I have the username "testUser" and password "testPass"
    When I send a POST request to "/multiplication" with parameters "3,2,3"
    Then the response should contain "result = 18" and "user = testUser"
