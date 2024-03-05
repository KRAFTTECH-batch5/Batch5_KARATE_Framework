Feature: Data Tests

  Background:
    * def kraftBaseUrl = "https://www.krafttechexlab.com/sw/api/v1"

  Scenario: Get all users with Kraft
    #request
    Given url kraftBaseUrl + "/allusers/alluser"
    Given param page = 1
    Given param pagesize = 10
    When method get
    #response
    Then status 200
    #get expected data from user.json file
    Then def expectedResponse = read("data/user.json")
    Then match response == expectedResponse
