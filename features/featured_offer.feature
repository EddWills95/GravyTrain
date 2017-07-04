Feature: Featured offers

  Scenario: A guest sees featured offers
    Given there are some featured offers
    When they are on the homepage
    Then they see featured offers

  Scenario: A guest doesn't see unfeatured offers
    Given there are some unfeatured offers
    When they are on the homepage
    Then they don't see unfeatured offers

  
  Scenario: A guest finds out more about an offer
    Given there are some featured offers
    When they are on the homepage
      And they click on the find out more button
    Then they see the offer's page