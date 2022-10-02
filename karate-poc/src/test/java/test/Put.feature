Feature: PUT API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  # Simple post request
  Scenario: Put Demo 1
    Given url 'https://reqres.in/api/users/2'
    And request {"name": "J" ,"job": "Technical Consultant "}
    When method PUT
    Then status 200
    And print response