Feature: filtering offerings
  
  Scenario: A guest filters by category
    Given there are some featured offers
      And there are some offerings in the food category
      And there are some offerings in the sports category
      And they are on the offerings listings page
    Then they see all of the offerings
    When they filter by the food category
    Then they see the food offerings
      And they don't see the sports offerings

  
  Scenario: A guest filters by price
    Given there are some featured offers
      And there are some offerings in the food category
      And there are some offerings in the sports category
      And they are on the offerings listings page
    Then they see all of the offerings
    When they filter by price
    Then they see the correct offerings
      And they don't see expensive offerings