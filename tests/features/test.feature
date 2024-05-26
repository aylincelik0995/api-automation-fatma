@test
Feature: Test Scenarios

    #test code
    Scenario: Test Scenario
        When I send a GET request
        Then Response status code is 200

    #test code
    Scenario: Test Scenario 2
        When I send a GET request to "-" with param "fatma" test code
        Then Response status code is 200
        And Response "name" property is equal "fatma"