Feature: POST API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def requestBody = read( '/data/request1.json')
    * def expectedOutput = read("/data/response1.json")

  # Simple post request
  Scenario: Post Demo 1
    Given url 'https://reqres.in/api/users'
    And request {"name": "J" ,"job": "Technical Consultant"}
    When method POST
    Then status 201
    And print response

  # Post with background
  Scenario: Post Demo 2
    Given path '/users'
    And request {"name": "JL" ,"job": "Technical Consultant"}
    When method POST
    Then status 201
    And print response

  # Post with Assertions
  Scenario: Post Demo 3
    Given path '/users'
    And request {"name": "JL" ,"job": "Technical Consultant"}
    When method POST
    Then status 201
    And match response == {"name": "JL", "job": "Technical Consultant", "id": "#string","createdAt": "#ignore"}
    And print response

  # Post with read response from file
  Scenario: Post Demo 4
    Given path '/users'
    And request {"name": "JL" ,"job": "Technical Consultant"}
    When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response

  # Post with read request body and read response from file
  Scenario: Post Demo 5
    Given path '/users'
    And request requestBody
    When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response

  # Post with Assertions
  Scenario: Post Demo 6
    Given path '/users'
    And def reqBody = requestBody
    And reqBody.job = 'Technical Consultant Senior'
    And request reqBody
    When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response
