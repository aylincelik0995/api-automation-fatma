Feature: Division API

Background: set username and password
Given I have the username "testUser" and password "testPass"

  Scenario: Division
    Given I have the username "testUser" and password "testPass"
    When I send a POST request to "/division" with parameters "55,11"
    Then the response should contain "result = 5" and "user = testUser"