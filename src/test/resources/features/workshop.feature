@stories
Feature:  Choucair

  As a Cucumber user,
  I want to successful and failed login to the virtual banking branch
@Scenario1:
  Scenario:   As a Cucumber user, I want to successful login to the virtual banking branch
         Given  than dairon wants to  login on the virtual banking branch
         When He enters the username and password well
         | strUser     | StrPassword |
         | Daironalex  |    3957     |
         Then He can successfully login to virtual banking


  Scenario:   As a Cucumber user, I want failed login to the virtual banking branch
            Given  than dairon wants to  login on the virtual banking branch
            When He enters the username and password wrong
            | strUser     | StrPassword |
            | Daironalex1 |    1234     |
            Then He fails to login to virtual bank


  @Scenario2:
  Scenario Outline:   As a Cucumber user, I want to reserve tickets from Medellin to Canada; from the Avianca web application
    Given  than dairon wants to  reserve tickets from the Avianca web application "https://www.avianca.com/co/es/"
    When He fills the city of departure <cityDeparture>and the city of arrival <cityArrival>, select departure and arrival dates and
    Then select the departure <departureDate> and arrival <arrivalDate> dates and the four passengers <passengers>, 2 children and two adults
    And choose the flight and select economy
    Examples:
      | cityDeparture    | cityArrival   | departureDate |  arrivalDate  |      passengers     |
      | Medellin         |    Canada     | Sat, 30 oct   |  Mon, 15 nov. |  2 adults  , 2 kids |

  Scenario Outline:   As a Cucumber user,I want to reserve tickets from Medellin to Canada; from the Avianca web application

    Given  than dairon wants to  reserve tickets from the Avianca web application "https://www.avianca.com/co/es/"
    When He fills the city of departure <cityDeparture>and the city of arrival <cityArrival>, select departure and arrival dates and
    Then select the departure <departureDate> and arrival <arrivalDate> dates and the four passengers <passengers>, 2 children and two adults
    And choose the flight and select economy
    Examples:
      | cityDeparture    | cityArrival   | departureDate |  arrivalDate  |      passengers     |
      | Cali             |    EEUU       | Sat, 30 oct   |  Mon, 15 nov. |  2 adults  , 2 kids |


  Scenario Outline:   As a Cucumber user,I want to reserve tickets from Bogota to Paris; from the Avianca web application

    Given  than dairon wants to  reserve tickets from the Avianca web application "https://www.avianca.com/co/es/"
    When He fills the city of departure <cityDeparture>and the city of arrival <cityArrival>, select departure and arrival dates and
    Then select the departure <departureDate> and arrival <arrivalDate> dates and the four passengers <passengers>, 2 children and two adults
    And choose the flight and select EXECUTIVE CLASS
    Examples:
      | cityDeparture    | cityArrival   | departureDate |  arrivalDate  |      passengers     |
      | Bogota           |    Paris      | Sat, 30 oct   |  Mon, 15 nov. |  4 adults  , 4 kids |

  Scenario Outline:   As a Cucumber user,I want to reserve tickets from Bogota to Paris; from the Avianca web application

    Given  than dairon wants to  reserve tickets from the Avianca web application "https://www.avianca.com/co/es/"
    When He fills the city of departure <cityDeparture>and the city of arrival <cityArrival>, select departure and arrival dates and
    Then select the departure <departureDate> and arrival <arrivalDate> dates and the four passengers <passengers>, 2 children and two adults
    And choose the flight and select EXECUTIVE CLASS
    Examples:
      | cityDeparture    | cityArrival   | departureDate |  arrivalDate  |      passengers     |
      | Barranquilla     |    New York    | Sat, 30 oct   |  Mon, 15 nov. |  4 adults  , 4 kids |




Feature: Make a payment from the virtual branch people
Background:
  Given Than Dairon is logged

  Scenario TC Visa payment
  When select payments within the virtual branch people,
  Then Choose TC Visa payment for $100

  Scenario TC Amex payment
    When select payments within the virtual branch people,
    Then Choose TC Visa Amex for 200


  Scenario TC Master payment
    When select payments within the virtual branch people,
    Then Choose TC Master payment for $500
