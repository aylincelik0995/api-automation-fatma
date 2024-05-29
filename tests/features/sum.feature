Feature: Arithmetic operations scenarios for sum

    Scenario: Calculating sum of numbers from 1 to 5
        Given I am authenticated with username "user" and password "pass"
        When I send a GET request to "sum" with param "5"
        Then the response status should be 200
        And Response "result" property is equal "15"

    Scenario: Calculating sum of numbers from 1 to 0
        Given I am authenticated with username "user" and password "pass"
        When I send a GET request to "sum" with param "0"
        Then Response status code is 400
        And Response "result" property is equal "error"

    Scenario: Calculating sum of numbers from 1 to 1
        Given I am authenticated with username "user" and password "pass"
        When I send a GET request to "sum" with param "1"
        Then Response status code is 400
        And Response "result" property is equal "error"

    Scenario: Calculating sum of numbers from 1 to 100
        Given I am authenticated with username "user" and password "pass"
        When I send a GET request to "sum" with param "100"
        Then Response status code is 400
        And Response "result" property is equal "error"

    Scenario: Failed session sum
        Given I am authenticated with username "fatma" and password "1"
        When I send a POST request to "sum" with params "2"
        Then Response status code is 400
        And The response should contain "error"



