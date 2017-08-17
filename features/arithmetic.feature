Feature: Arithmetic feature

    Scenario: Addition: 32+7=39
        When I press number: "32"
        And I press "+"
        And I press number: "7"
        And I press "="
        Then I see "32+7 = 39" in result field

    Scenario: Substraction: 41-23=18
        When I press number: "41"
        And I press "-"
        And I press number: "23"
        And I press "="
        Then I see "41-23 = 18" in result field

    Scenario: Multiplication: 41*86=3526
        When I press number: "41"
        And I press "*"
        And I press number: "86"
        And I press "="
        Then I see "41*86 = 3526" in result field

    Scenario: Division: 9/54=0.1666666667
        When I press number: "9"
        And I press "/"
        And I press number: "54"
        And I press "="
        Then I see "9/54 = 0.1666666667" in result field

    Scenario: Addition: 3.2+7=10.2
        When I press number: "3.2"
        And I press "+"
        And I press number: "7"
        And I press "="
        Then I see "3.2+7 = 10.2" in result field

    Scenario: Substraction: 41-2.3=38.7
        When I press number: "41"
        And I press "-"
        And I press number: "2.3"
        And I press "="
        Then I see "41-2.3 = 38.7" in result field

    Scenario: Multiplication: 4.1*86=352.6
        When I press number: "4.1"
        And I press "*"
        And I press number: "86"
        And I press "="
        Then I see "4.1*86 = 352.6" in result field

    Scenario: Division: 9/5.4=1.6666666667
        When I press number: "9"
        And I press "/"
        And I press number: "5.4"
        And I press "="
        Then I see "9/5.4 = 1.6666666667" in result field

    Scenario: Substraction: 0-1=-1
        When I press number: "0"
        And I press "-"
        And I press number: "1"
        And I press "="
        Then I see "0-1 = -1" in result field

    Scenario: Complex calculation
    """ this case is like the calculation: (2+3)*5=25 """
        When I press number: "2"
        And I press "+"
        And I press "3"
        And I press "*"
        And I press number: "5"
        And I press "="
        Then I see "5*5 = 25" in result field
