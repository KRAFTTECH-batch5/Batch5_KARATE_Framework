Feature: Kraft user test with token

  Background:
    * def kraftBaseUrl = "https://www.krafttechexlab.com/sw/api/v1"
    * def authFeature = call read("CreateKraftUserAndGetToken6.feature")
    * def accessToken = authFeature.token

  Scenario: Get user information
    #request
    Given url kraftBaseUrl + "/user/me"
    Given header token = accessToken
    When method get
    #response
    Then status 200

