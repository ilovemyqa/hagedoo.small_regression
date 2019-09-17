Feature: About us https://hagedoo.de/uber-uns

  @about_us
  Scenario: About us https://hagedoo.de/uber-uns
    Given I open browser for about us page.
    When I go to About us page.
    And I find element second title.
    And I find element button recall for about us.
    And I find element button Get an offer now for about us.
    Then Test complate for about us.