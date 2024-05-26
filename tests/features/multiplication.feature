Feature: Arithmetic operations scenarios for multiplication

    #request : POST API_URL/multiplication?params=3,2,3
    #response : result = 18, user=info
    Scenario: Multiplication two numbers
        Given I am authenticated with username "user" and password "pass"
        When I send a POST request to "multiplication" with params "3,2,3"
        Then The response status should be 200
        And The response should contain "result = 18"