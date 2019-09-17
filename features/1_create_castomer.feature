Feature: Create a Customer

  @create_customer_testcase
  Scenario: Create a customer (job) on boarding with test credentials
    Given I open browser.
    And I go to main page.
    And I go to login page.
    When Enter the firstname customer in the textbox.
    And Enter the lastname customer in the textbox.
    And Enter the email customer in the textbox.
    And Enter the phone customer in the textbox.
    Then I accept the terms and conditions and privacy policy customer licence.
    And I check the registration customer result.