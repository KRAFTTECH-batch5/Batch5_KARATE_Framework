Feature: Parameter examples

  Background:
    * def kraftBaseUrl = "https://www.krafttechexlab.com/sw/api/v1/"

  #get all information whose id is 1
  Scenario: path parameter with kraft exlab
    #request
    Given url kraftBaseUrl + "/allusers/getbyid"
    Given path "1"
    When method get
    #response
    Then status 200


  Scenario: verify response of 5. user
    Given def expectedUser =
    """
    [
    {
        "id": 5,
        "name": "isa akyuz",
        "email": "isaakyuz0811@gmail.com",
        "password": "$2y$10$1l5GsACOln7MYqZLM.OyEuK.BQtI4iU8nBlkXTerzGrSYf8S.1oN6",
        "about": null,
        "terms": "1",
        "date": "2022-09-12 20:50:38",
        "job": null,
        "company": null,
        "website": null,
        "location": null,
        "skills": [],
        "github": null,
        "twitter": null,
        "facebook": null,
        "youtube": null,
        "linkedin": null,
        "instagram": null,
        "avatar": "1",
        "admin": "1",
        "education": [],
        "experience": []
    }
]
    """
    #request
    Given url kraftBaseUrl + "/allusers/getbyid"
    Given path "5"
    When method get
    #response
    Then status 200
    Then match response == expectedUser
    Then print response

  # send a request to get all users from kraft exlab and verify status code
  Scenario: query parameter
    Given url kraftBaseUrl + "/allusers/alluser"
    Given param page = 1
    Given param pagesize = 100
    When method get
    Then status 200

