Feature: Arithmetic operations scenarios for multiplication

  Scenario: Successfully multiplication for two numbers
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "multiplication" with params "55,1"
    Then Response status code is 200
    And Response "result" property is equal "55"
    And Response "user" property is equal "fatma"

  Scenario: Successfully multiplication for five numbers
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "multiplication" with params "1,2,3,4,5"
    Then Response status code is 200
    And Response "result" property is equal "120"
    And Response "user" property is equal "fatma"

  Scenario: Successfully multiplication for 0 multiplier
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "multiplication" with params "0,10"
    Then Response status code is 200
    And Response "result" property is equal "0"
    And Response "user" property is equal "fatma"

  Scenario: Failed session divition
    Given I am authenticated with username "fatma" and password "1"
    When I send a POST request to "multiplication" with params "100,2"
    Then Response status code is 400
    And The response should contain "error"

  Scenario: Failed multiplication for numeric and non-numeric parameter
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "multiplication" with params "100,a"
    Then Response status code is 400
    And The response should contain "error"

  Scenario: Failed multiplication for non-numeric parameter
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "multiplication" with params "a,b"
    Then Response status code is 400
    And The response should contain "error"

  Scenario: Failed multiplication for more five numbers
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "multiplication" with params "1000,1,1,1,2,2"
    Then Response status code is 400
    And The response should contain "error"
