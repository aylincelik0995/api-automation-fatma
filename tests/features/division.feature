Feature: Arithmetic operations scenarios for division

    Scenario: Successfully division for two numbers
        Given I am authenticated with username "fatma" and password "12345"
        When I send a POST request to "division" with params "55,11"
        Then Response status code is 200
        And Response "result" property is equal "5"
        And Response "user" property is equal "fatma"

    Scenario: Successfully division for five numbers
        Given I am authenticated with username "fatma" and password "12345"
        When I send a POST request to "division" with params "1000,1,2,2,2"
        Then Response status code is 200
        And Response "result" property is equal "125"
        And Response "user" property is equal "fatma"

    Scenario: Successfully division for 0 dividend
        Given I am authenticated with username "fatma" and password "12345"
        When I send a POST request to "division" with params "0,10"
        Then Response status code is 200
        And Response "result" property is equal "0"
        And Response "user" property is equal "fatma"

    Scenario: Failed session divition
        Given I am authenticated with username "fatma" and password "1"
        When I send a POST request to "division" with params "100,2"
        Then Response status code is 400
        And The response should contain "error"

    Scenario: Failed division for numeric and non-numeric parameter
        Given I am authenticated with username "fatma" and password "12345"
        When I send a POST request to "division" with params "100,a"
        Then Response status code is 400
        And The response should contain "error"

    Scenario: Failed division for non-numeric parameter
        Given I am authenticated with username "fatma" and password "12345"
        When I send a POST request to "division" with params "a,b"
        Then Response status code is 400
        And The response should contain "error"

    Scenario: Failed division for 0 divider
        Given I am authenticated with username "fatma" and password "12345"
        When I send a POST request to "division" with params "10,0"
        Then Response status code is 400
        And The response should contain "error"

    Scenario: Failed division for more five numbers
        Given I am authenticated with username "fatma" and password "12345"
        When I send a POST request to "division" with params "1000,1,1,1,2,2"
        Then Response status code is 400
        And The response should contain "error"
