Feature: Assertions by match keyword

  @practice
  Scenario: some matching example
    #validate that name is equal to Burcu
    * def name = "Burcu"
    * match name == "Burcu"
    #validate that name is not equal to Burcu
    * match name != "B"

  Scenario: more matching example
    * def employee =
    """
    {
    "firstName": "Dincer",
    "lastName": 'Yıldız',
    "salary": 4000,
    "active": true
    }
    """
    * match employee.firstName == "Dincer"
    * match employee.lastName == "Yıldız"
    * match employee.salary == 4000
    * match employee.active == true

  Scenario:  fuzzy matching
    * def employee =
    """
    {
    "firstName": "Dincer",
    "lastName": 'Yıldız',
    "salary": 4000,
    "active": true
    }
    """
    #validate that firstname is string
    * match employee.firstName == "#string"
    * match employee.lastName != "#number"
    #validate that salary is number
    * match employee.salary == "#number"
    #validate that active is boolean
    * match employee.active == "#boolean"
    #validate that firstname exists
    * match employee.firstName == "#present"
    #validate that gender does not exist
    * match employee.gender == "#notpresent"


  Scenario: contains matching
    * def students =
    """
    [

    {
    "name": "Yusuf",
    "salary": 50000
    },

    {
    "name": "Hatice",
    "salary": 60000
    }

    ]
    """
    * def lengthOfArray = students.length
    #how to verify length of array
    * match lengthOfArray == 2
    #check if the array contains below json object
    * match students contains {'name': "Yusuf", "salary": 50000}

  Scenario: contains matching-2
    * def arr = ['Samet', "Tuğba", "Rabia", "Atakan"]
    * print arr
    * match arr contains "Samet"
    * match arr !contains "Aslıhan"




