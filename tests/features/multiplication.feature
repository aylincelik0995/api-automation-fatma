Feature: Arithmetic operations scenarios for multiplication

    #request : POST API_URL/multiplication?params=3,2,3
    #response : result = 18, user=info
    Scenario: Multiplication two numbers
        Given I am authenticated with username "user" and password "pass"
        When I send a POST request to "multiplication" with params "3,2,3"
        Then The response status should be 200
        And The response should contain "result = 18"



  Scenario: Subtraction Endpoint
    Given the API has a subtraction endpoint
    When I send a request to subtract 2 from 5
    Then the result should be 3
    When I send a request to subtract multiple numbers
    Then the result should be the difference of those numbers
    When I send more than 5 parameters
    Then the API should return a bad request
    When I send a non-numeric parameter
    Then the API should return a bad request


  Scenario: General Tests
    Given the API has endpoints
    When I send a request to a non-existing endpoint
    Then the API should return a 404 status code
    When I send a request with large inputs
    Then the API should handle it smoothly
    When I send a request
    Then the response should include result and user fields