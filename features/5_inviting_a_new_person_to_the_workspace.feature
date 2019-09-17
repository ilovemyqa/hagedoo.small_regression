Feature: Go to workspace and add new construction project

  @inviting_a_new_person_to_the_workspace
  Scenario: Go to workspace and add new construction project
    Given I open browser testcase.
    And I go to page for autorization page for authorization.
    When I enter the user data in the authorization form.
    And I click on the login button and go to the workspace page.
    And I click on 3 dots icon and click invite a new member button
    And Enter the firstname member in the textbox.
    And Enter the lastname member in the textbox.
    And Enter the email member in the textbox.
    And Enter the phone member in the textbox.
    And Enter the role member in the box.
    And I click on invete a new member button
    Then I check the invention member result.