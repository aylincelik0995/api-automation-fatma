Feature: Arithmetic operations scenarios for multiplication

    #request : POST API_URL/substraction?params=3,2,3
    #response : result = 3, user=info
    Scenario: Substraction two numbers
        Given I am authenticated with username "user" and password "pass"
        When I send a POST request to "substraction" with params "5-2"
        Then The response status should be 200
        And The response should contain "result = 3"