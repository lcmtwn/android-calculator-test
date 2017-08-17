Feature: Clear feature

    Scenario: Input number: 1 and clear
        When I press number: "1"
        Then I see "1" in info field
        And I press "C"
        Then I see "" in info field

    Scenario: Input number: 1.1 and clear: 1 and clear: .
        When I press number: "1.1"
        Then I see "1.1" in info field
        And I press "C"
        Then I see "1." in info field
        And I press "C"
        Then I see "1" in info field

    Scenario: Input equation: 12-3 and clear: 3
        When I press number: "12"
        And I press "-"
        And I press number: "3"
        And I press "C"
        Then I see "12-" in result field
        And I see "" in info field

    Scenario: Clear the result
        When I press number: "32"
        And I press "+"
        And I press number: "7"
        And I press "="
        Then I see "32+7 = 39" in result field
        And I see "" in info field
        And I press "C"
        Then I see "" in info field
        And I see "" in result field
