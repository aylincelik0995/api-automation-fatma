Feature: Arithmetic operations scenarios for addition

  #request : POST API_URL/add?params=1,2
  #response : result = 3, user=info
  Scenario: Successfully adding for two numbers
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "add" with params "1,2"
    Then Response status code is 200
    And Response "result" property is equal "3"
    And Response "user" property is equal "fatma"


  Scenario: Successfully adding for two numbers
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "add" with params "a,b"
    Then Response status code is 400
    And The response should contain "error"

  Scenario: Failed addition for two numbers
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "add" with params "1,2"
    Then Response status code is 400
    And The response should contain "error"



  Scenario: Addition Endpoint
    Given the API has an addition endpoint
    When I send a request to add 1 and 2
    Then the result should be 3
    When I send a request to add multiple numbers
    Then the result should be the sum of those numbers
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