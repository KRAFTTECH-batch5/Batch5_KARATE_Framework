Feature: Data Driven Testing

  Background:
    * def kraftBaseUrl = "https://www.krafttechexlab.com/sw/api/v1"

  Scenario Outline: Check first 5 user in Kraft
    #request
    * url kraftBaseUrl + "/allusers/getbyid"
    * path '<id>'
    * method get
    #response
    * status 200
    * match response[0].name == "<expectedName>"
    * match response[0].email == "<expectedEmail>"

    Examples:
      | id | expectedName    | expectedEmail           |
      | 1  | MercanS         | afmercan@gmail.com      |
      | 5  | isa akyuz       | isaakyuz0811@gmail.com  |
      | 24 | mike            | mike@gmail.com          |
      | 29 | wilini3845@once | wilini3845@oncebar.com  |
      | 33 | Sebastian       | ghan@krafttechexlab.com |


  Scenario Outline: Check first 5 user in Kraft with a csv file
    #request
    * url kraftBaseUrl + "/allusers/getbyid"
    * path '<id>'
    * method get
    #response
    * status 200
    * match response[0].name == "<expectedName>"
    * match response[0].email == "<expectedEmail>"

    Examples:
    |read("data/users.csv")|



