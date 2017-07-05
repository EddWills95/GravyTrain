Feature: User sign in

  Scenario: A buyer signs in
    Given they are registered
      And they are on the sign in page
    When they enter their email address
      And they fill in their password
      And they click the sign in button
    Then they are signed in
    And they are on the homepage