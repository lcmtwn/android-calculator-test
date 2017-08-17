Feature: Input feature

    Scenario: Input number: 19
        When I press number: "19"
        Then I see "19" in info field

    Scenario: Input number: .9
        When I press number: ".9"
        Then I see ".9" in info field

    Scenario: Input equation: 12-
        When I press number: "12"
        And I press "-"
        Then I see "12-" in result field

    Scenario: Input equation: 12-3
        When I press number: "12"
        And I press "-"
        And I press number: "3"
        Then I see "12-" in result field
        And I see "3" in info field

    Scenario: Input equation: 2.+
        When I press number: "2."
        And I press "+"
        Then I see "2+" in result field

    Scenario: Input "+"
        When I press "+"
        Then I see "+" in result field

    Scenario: Input ".."
        When I press number: ".."
        Then I see "." in info field

    Scenario: Input "00"
        When I press number: "00"
        Then I see "0" in info field
