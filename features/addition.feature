Feature: Addition API


  Scenario: Addition user correct status code "200"
    Given I an authorized user with username "fatma" and password "1234"
    When I send a "GET" request to "USER" with header parameters
    And I send a "POST" request to "/add" with parameters "1,2"
    Then the response status should be "200"
    Then the response should contain "result = 3" and "user = fatma"


  Scenario: Addition user incorrect status code "400"
    Given I an authorized user with username "fatma" and password "abcd"
    When I send a "GET" request to "USER" with header parameters
    Then the response status should be "400"

