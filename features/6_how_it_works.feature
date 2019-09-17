Feature: How it works https://hagedoo.de/wie-es-funktioniert

  @how_it_works
  Scenario: How it works https://hagedoo.de/wie-es-funktioniert
    Given I open browser for testing page.
    When I go to How it work page.
    And I find element title.
    And I find element title 2.
    And I find element button recall
    And I find element button Get an offer now
    Then Test complate