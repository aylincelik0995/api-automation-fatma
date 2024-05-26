Feature: 

Background: set username and password
Given I have the username "testUser" and password "testPass"

  Scenario: Addition
    Given I have the username "testUser" and password "testPass"
    When I send a POST request to "/add" with parameters "1,2"
    Then the response should contain "result = 3" and "user = testUser"


  