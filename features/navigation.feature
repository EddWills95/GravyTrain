Feature: Site Navigation
  Scenario: A guest reads a blog
    Given they are on the homepage
      And there are blog posts
    When they click on the blog button
    Then they will be sent to the blog page
      And they see blog posts