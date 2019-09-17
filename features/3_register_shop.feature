Feature: Register a shop

  @3_register_shop_testcase
  Scenario: Register a shop
    Given I go to register a shop page.
    When Enter the firstname in the textbox
    And Enter the lastname in the textbox
    And Enter the phone in the textbox
    And Enter the email in the textbox
    And Enter the shop name in the textbox
    And Enter the shop adress in the textbox
    Then I accept the terms and conditions and privacy policy
    And I check the registration result