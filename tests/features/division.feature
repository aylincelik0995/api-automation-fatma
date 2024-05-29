Feature: Arithmetic operations scenarios for division

    #request : API_URL/division?params=55,11
    #response : POST result = 5, user=info
    Scenario: Division two numbers
        Given I am authenticated with username "user" and password "pass"
        When I send a POST request to "division" with params "55,11"
        Then The response status should be 200
        And The response should contain "result = 5"

Scenario: Division Endpoint
    Given the API has a division endpoint
    When I send a request to divide 10 by 2
    Then the result should be 5
    When I send a request to divide multiple numbers
    Then the result should be the quotient of those numbers
    When I send more than 5 parameters
    Then the API should return a bad request
    When I send a non-numeric parameter
    Then the API should return a bad request
    When I try to divide by zero
    Then the API should return a bad request

Scenario: General Tests
    Given the API has endpoints
    When I send a request to a non-existing endpoint
    Then the API should return a 404 status code
    When I send a request with large inputs
    Then the API should handle it smoothly
    When I send a request
    Then the response should include result and user fields