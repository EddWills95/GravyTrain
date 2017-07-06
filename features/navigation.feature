Feature: Site Navigation

  Scenario: A guest sees a list of blogs
    Given there are blog posts
      And they are on the homepage
    When they click on the blog button
    Then they will be sent to the blog page
      And they see a list of blog posts
