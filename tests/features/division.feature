Feature: Arithmetic operations scenarios for division

    #request : API_URL/division?params=55,11
    #response : POST result = 5, user=info
    Scenario: Division two numbers
        Given I am authenticated with username "user" and password "pass"
        When I send a POST request to "division" with params "55,11"
        Then The response status should be 200
        And The response should contain "result = 5"