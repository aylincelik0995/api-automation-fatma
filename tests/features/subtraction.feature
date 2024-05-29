Feature: Arithmetic operations scenarios for multiplication

    #request : POST API_URL/substraction?params=3,2,3
    #response : result = 3, user=info
    Scenario: Substraction two numbers
        Given I am authenticated with username "user" and password "pass"
        When I send a POST request to "substraction" with params "5-2"
        Then The response status should be 200
        And The response should contain "result = 3"


  Scenario: Authentication and Header Validation
    Given the API requires a username and password in the header
    When I make a request without a username or password
    Then the API should return a bad request
    When I make a request with a valid username and password
    Then the API should return a successful response


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

  Scenario: Multiplication Endpoint
    Given the API has a multiplication endpoint
    When I send a request to multiply 3 and 2
    Then the result should be 6
    When I send a request to multiply multiple numbers
    Then the result should be the product of those numbers
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