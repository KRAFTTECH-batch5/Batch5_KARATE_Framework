Feature: Create new user and get token

  Background:
    * def kraftBaseUrl = "https://www.krafttechexlab.com/sw/api/v1"

  Scenario: Register a new user with the help of Java and get token
      # point the class that we want to run
      # Java.type --> used to connect to Java class
    Given def KDG = Java.type("utilities.KraftDataGenerator")
    Given def newUser = KDG.createUser()
      #request
    Given url kraftBaseUrl + "/allusers/register"
    Given request newUser
    When method post
      #response
    Then status 200
    Then match response.name == newUser.name
    Then match response.email == newUser.email
    Then match response.id == "#number"
    #get token and put it in a variable
    Then def token = response.token
