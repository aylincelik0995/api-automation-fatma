Feature: Arithmetic operations scenarios for subtraction

  Scenario: Successfully substraction for two numbers
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "sub" with params "5,3"
    Then Response status code is 200
    And Response "result" property is equal "2"
    And Response "user" property is equal "fatma"

  Scenario: Successfully substraction for five numbers
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "sub" with params "15-5-4-3-2"
    Then Response status code is 200
    And Response "result" property is equal "1"
    And Response "user" property is equal "fatma"

  Scenario: Successfully substraction for 0 number
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "sub" with params "0,10"
    Then Response status code is 200
    And Response "result" property is equal "-10"
    And Response "user" property is equal "fatma"

  Scenario: Failed session substraction
    Given I am authenticated with username "fatma" and password "1"
    When I send a POST request to "sub" with params "1,2"
    Then Response status code is 200
    And The response should contain "error"

  Scenario: Failed substraction for numeric and non-numeric parameter
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "sub" with params "100,a"
    Then Response status code is 400
    And The response should contain "error"

  Scenario: Failed substraction for non-numeric parameter
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "sub" with params "a,b"
    Then Response status code is 400
    And The response should contain "error"

  Scenario: Failed substraction for more five numbers
    Given I am authenticated with username "fatma" and password "12345"
    When I send a POST request to "sub" with params "100,20,30,5,5,5"
    Then Response status code is 400
    And Response "result" property is equal "35"
    And The response should contain "error"






