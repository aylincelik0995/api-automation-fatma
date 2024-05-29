Feature: Arithmetic operations scenarios for addition

  Scenario: Successfully adding for two numbers
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "add" with params "1,2"
    Then Response status code is 200
    And Response "result" property is equal "3"
    And Response "user" property is equal "fatma"

  Scenario: Successfully adding for five numbers
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "add" with params "1,2,3,4,5"
    Then Response status code is 200
    And Response "result" property is equal "15"
    And Response "user" property is equal "fatma"

  Scenario: Successfully adding for 0 number
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "add" with params "0,10"
    Then Response status code is 200
    And Response "result" property is equal "10"
    And Response "user" property is equal "fatma"

  Scenario: Failed session addition
    Given I am authenticated with username "fatma" and password "1"
    When I send a POST request to "add" with params "1,2"
    Then Response status code is 400
    And The response should contain "error"

  Scenario: Failed adding for numeric and non-numeric parameter
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "add" with params "100,a"
    Then Response status code is 400
    And The response should contain "error"

  Scenario: Failed adding for non-numeric parameter
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "add" with params "a,b"
    Then Response status code is 400
    And The response should contain "error"

  Scenario: Failed adding for more five numbers
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "add" with params "1,2,3,4,5,6"
    Then Response status code is 400
    And Response "result" property is equal "15"
    And Response "result" property is equal "error"






