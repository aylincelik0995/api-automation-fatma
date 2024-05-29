Feature: Login API

  Scenario: Authentication and Header Validation
    Given the API requires a username and password in the header
    When I make a request without a username or password
    Then the API should return a bad request
    When I make a request with a valid username and password
    Then the API should return a successful response

