Feature: Arithmetic operations scenarios for multiplication

    #request : Get API_URL/sum?params=5
    #response : result = 10, user=info
    Scenario: Calculating sum of numbers from 1 to 5
        Given I am authenticated with username "user" and password "pass"
        When I send a GET request to "sum" with param "5"
        Then the response status should be 200
        And the response should contain "result = 15"