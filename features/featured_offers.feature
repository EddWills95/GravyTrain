Feature: Featured offers

  Scenario: A guest sees featured offers
    Given there are some featured offers
    When they are on the homepage
    Then they see featured offers

  Scenario: A guest doesn't see non-featured offers
    Given there are some non-featured offers
    When they are on the homepage
    Then they don't see non-featured offers

  Scenario: A guest sees more information about an offer
    Given there are some featured offers
    When they are on the homepage
      And they click on an offer
    Then they see more information for that offer

  Scenario: A guest sees discount for an offer
    Given there are some featured offers
      And there is a discount for that offer
    When they are on the homepage
      And they click on an offer
    Then they see the discount for that offer