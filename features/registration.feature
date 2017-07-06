Feature: User registration
  Background:
    Given they are on the registration page

  Scenario: A buyer registers
    When they enter their email
      And they enter their password
      And they confirm their password
      And they register
    Then they have a new buyer account
      And they get sent to the homepage
      And they see a message welcoming them into the Gravy Train
      And they receive an email asking them to confirm their email address

  Scenario: A provider registers
    Given they completed the buyer registration form
    When they click on Wait I'm a Provider
      And they fill in the extra provider fields
      And they register
    Then they have a new provider account



