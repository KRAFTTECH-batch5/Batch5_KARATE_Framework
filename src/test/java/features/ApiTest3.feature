Feature: Basic Api Tests

  Scenario: get all books and validate status code
    #request
    Given url "https://demoqa.com/BookStore/v1/Books"
    When method get
    #response and validation
    Then status 200

  Scenario: get details of user whose id is 1 and validate status code
    #request
    Given url "https://www.krafttechexlab.com/sw/api/v1/allusers/getbyid/1"
    When method get
    #response
    Then status 200

  Scenario: basic header verification with bookstore
    #request
    Given url "https://demoqa.com/BookStore/v1/Books"
    When method get
    #response and validation
    Then status 200
    Then match header Content-Type == "application/json; charset=utf-8"
    Then match header Connection == "keep-alive"
    Then match header Date == "#present"

  Scenario:  basic response body verification with bookstore
    #request
    Given url "https://demoqa.com/BookStore/v1/Books"
    When method get
    #response and validation
    Then status 200
    Then match header Content-Type == "application/json; charset=utf-8"
    Then match header Connection == "keep-alive"
    Then match header Date == "#present"
    #print response
    Then print response
    #validate first isbn number
    Then match response.books[0].isbn == "9781449325862"
    #validate second title
    Then match response.books[1].title == "Learning JavaScript Design Patterns"
    #validate third subtitle exists
    Then match response.books[2].subTitle == "#present"
