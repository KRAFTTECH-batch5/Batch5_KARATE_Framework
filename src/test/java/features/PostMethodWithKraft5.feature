Feature: Post Method + Karate/Java Integration

  Background:
    * def kraftBaseUrl = "https://www.krafttechexlab.com/sw/api/v1"

  Scenario: Register a new user
    #request
    Given url kraftBaseUrl + "/allusers/register"
    Given request
    """
    {
      "name": "alperen",
      "email": "alperen55pro@gmail.com",
      "password": "Test.1234567890"
    }
    """
    When method post
    #response
    Then status 200
    Then print response

    Scenario: Register a new user with the help of Java
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
      Then print response
