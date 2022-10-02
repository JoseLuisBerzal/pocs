Feature: DELETE API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  # Simple post request
  Scenario: Delete Demo 1
    Given url 'https://reqres.in/api/users/2'
    When method DELETE
    Then status 204
    And print response