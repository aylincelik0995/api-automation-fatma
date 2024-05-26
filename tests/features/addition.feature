Feature: Arithmetic operations scenarios for addition

  #request : POST API_URL/add?params=1,2
  #response : result = 3, user=info
  Scenario: Successfully adding for two numbers
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "add" with params "1,2"
    Then Response status code is 200
    And Response "result" property is equal "3"
    And Response "user" property is equal "fatma"

  Scenario: Failed addition for two numbers
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "add" with params "1,2"
    Then Response status code is 400
    And The response should contain "error"
