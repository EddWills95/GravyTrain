Feature: User registration

  Scenario: A buyer registers
    Given they are on the registration page
    When they enter their email
      And they enter their password
      And they confirm their password
      And they register
    Then they have a new account
    And they get set to the homepage
      And they see a message welcoming them into the Gravy Train
      And they receive an email asking them to confirm their email address