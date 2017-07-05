Feature: Sign out

  Scenario: User signs out
    Given they are registered
      And they are already signed in
      And they are on the homepage
    When they click logout
    Then they are logged out