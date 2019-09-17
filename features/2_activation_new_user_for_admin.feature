Feature: Activation new user for Admin

  @activation_new_user_for_admin
  Scenario: Activation new user for Admin
    Given I open browser for test.
    And I go to page for autorization page.
    When I enter the admin data in the authorization form.
    And I click on the login button and go to the admin page.
    And I click and go to the user management menu and select the user type as all users.
    And I select an inactive user and go to his settings.
    And I look for the user activation button and click it.
    Then I check the sign of the new user’s authorization.