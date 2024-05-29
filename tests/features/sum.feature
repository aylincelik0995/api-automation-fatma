Feature: Arithmetic operations scenarios for multiplication

    #request : Get API_URL/sum?params=5
    #response : result = 10, user=info
    Scenario: Calculating sum of numbers from 1 to 5
        Given I am authenticated with username "user" and password "pass"
        When I send a GET request to "sum" with param "5"
        Then the response status should be 200
        And the response should contain "result = 15"

Scenario: Sum Endpoint
    Given the API has a sum endpoint
    When I send a request to sum numbers from 1 to 5
    Then the result should be 15
    When I send more than 1 parameter
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