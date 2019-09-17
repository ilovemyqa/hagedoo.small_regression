Feature: Signup craftsman and activation and go account settings

  @4_signup_craftsman_and_activation_and_go_account-settings
  Scenario: Signup craftsman and activation and go account settings
    Given I go to registration craftsman  page.
    When Enter the firstname craftsman in the textbox.
    And Enter the lastname craftsman in the textbox.
    And Enter the email craftsman in the textbox.
    And Enter the phone craftsman in the textbox.
    And Enter the adress in the textbox.
    And Enter the company name in the textbox.
    And Enter the partner name in th textbox.
    Then I accept the terms and conditions and privacy policy for craftsman.
    And I check the registration craftsman result.
    When I go to mailforspam.com serves for activation craftsman.
    And Enter the email textbox and click button.
    And Open activation email and click button.
    And Enter the password in the textboxs.
    Then I check the activation craftsman result.