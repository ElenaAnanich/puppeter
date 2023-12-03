Feature: buying tickets

        Scenario: the user selects and books one seat
                Given user is on page
                When user choose 4-th day and movie
                And select 7 row and 5 seat
                Then ticket purchase is confirmed

        Scenario: the user trying to select reserved seats
                Given user is on page
                When user choose 4-th day and movie
                And select 7 row and 5 seat
                And user is on page
                When user choose 4-th day and movie
                Then booking is not possiblen

        Scenario: the user selects and books several seats
                Given user is on page
                When user choose 7-th day and movie
                And select 8 row and 3,4 seats
                Then ticket purchase is confirmed

        Scenario: the user selects and books for Movie week later
                Given user is on page
                When user choose 4-th day and movie
                And select 6 row and 1,2,3,4 seat
                Then ticket purchase is confirmed

        Scenario: the user check if the place is taken after ordering
                Given user is on page
                When user choose 4-th day and movie
                And select 2 row and 4 seat
                Then ticket purchase is confirmed
