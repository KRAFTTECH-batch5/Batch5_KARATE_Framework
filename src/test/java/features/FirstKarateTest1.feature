Feature: Welcome to Karate

    #how to print
  Scenario: how to print
    Given print "Hello World"
    When print 'another print'
    Then  print "only print"

    # * --> represents given, when and then
    # ',' --> concenating two strings with adding a space
  Scenario: more printing
    Given print "some words to print"
    * print "my name is" + ' karate kid'
    * print 'my name is', 'karate kid'

    # how to define variables
    # def is common keyword for all variable types such as string, number, json object, etc.
  Scenario: variables
    * def name = "Mike"
    * print "my name is", name
    * def age = 20
    * print name, "is", age, "years old"

  Scenario: json object
    * def student = {'name': "Emre", "owes_tuition": false}
    * print student
    * print student.name
    * print student.owes_tuition

  Scenario:  json object-2
    * def student =
    """
    {
    "firstName": "Dincer",
    "lastName": 'Yıldız',
    "salary": 4000
    }
    """
    * print student
    * print student.salary

  Scenario: json object-3
    * def gorestUser =
    """
    {
        "id": 6752672,
        "name": "Daksha Mishra",
        "email": "daksha_mishra@littel.test",
        "gender": "male",
        "status": "active"
    }
    """
    #print gorestUser, id, name, email, gender and status
    * print gorestUser
    * print gorestUser.id
    * print gorestUser.email
    * print gorestUser.gender
    * print gorestUser.status
    * print gorestUser.name


  Scenario: json objects in the arrays
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
    # print all array
    * print students
    # print first json object in the array
    * print students[0]
    # print name field of second json object
    * print students[1].name



