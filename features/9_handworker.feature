Feature: landing pages (craftsman) https://hagedoo.de/handwerker

  @handworker
  Scenario: landing pages (craftsman) https://hagedoo.de/handwerker
    Given I open browser for handworker page.
    When Enter the zipcode in the textbox.
    And Click the calculate new button.
    And Click the Sign in directly button.
    And Click the Craftsman Dashboard button.
    And I find element button recall for handworker.
    And I find element footer title handworker.
    Then Test complate for handworker.