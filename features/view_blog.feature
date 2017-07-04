Feature: view_blog

  Scenario: A guest views a blog page
    When they are on the homepage
      And they click on the blog link
    Then they see the blog page