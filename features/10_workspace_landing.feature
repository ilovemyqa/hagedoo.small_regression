Feature: Landing page Workspace https://hagedoo.de/arbeitsplatz

  @10_workspace_landing
  Scenario: Landing page Workspace https://hagedoo.de/arbeitsplatz
    Given I open browser for workspace page.
    When I go to workspace landing page.
    And I find general page title.
    And I click button Use for free and click.
    And I fund h2 page title.
    And I click menu greate work hagedoo.
    And I find about-marketplace menu.
    And I find advantages-wrapper menu.
    And I find autorization menu.
    Then Test complate for workspace landing page.