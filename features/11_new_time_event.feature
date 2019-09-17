Feature: User adds a New time event

  @11_new_time_event
  Scenario: User adds a New time event
    Given I open browser for add new time event.
    When I go to login page for workspace.
    And I click to button new event.
    And Enter the title new event in the textbox.
    And Enter the description about new event in the textbox.
    And I click add button for add picture new event.
    And I click color for new event.
    And I click to creat new event.
    Then I verify add new event.
    And Test complate for add new time event.