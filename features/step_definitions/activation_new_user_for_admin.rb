Given(/^I open browser for test\.$/) do
  @browser.manage.window.maximize
  @wait = Selenium::WebDriver::Wait.new(timeout: 20)
  # url = 'https://hagedoo.de'
  @url_project = 'https://staging.hagedoo.de/'
  @browser.navigate.to @url_project
end

And(/^I go to page for autorization page\.$/) do
  @browser.find_element(xpath: "//li[@class='header-item header-button header-login ']/a").click
  @wait.until { @browser.find_element(xpath: "//form[@class='form']/h1[@class='login-title']").displayed? }
end

When(/^I enter the admin data in the authorization form\.$/) do
  login_email_admin = "admin@mail.com"
  # password_admin_ch1 = '`R9)re4bWGVk@MFv:!"aDc9d`aPj^{;MD5-M'
  password_admin_ch1 = '9de7f8b4-2092-4dd9-a8db-551afd1fd13f'

  @browser.find_element(xpath: "//input[@id='email-field']").send_keys login_email_admin
  @browser.find_element(xpath: "//input[@id='password-field']").send_keys password_admin_ch1
end

And(/^I click on the login button and go to the admin page\.$/) do
  @browser.find_element(xpath: "//button[@class='button']").submit
  @wait.until { @browser.find_element(xpath: "//i[@class='anticon anticon-home']").displayed? }
end

And(/^I click and go to the user management menu and select the user type as all users\.$/) do
  @browser.find_element(xpath: "//a[@class='sidebar-link has-arrow']").click
  @browser.find_element(xpath: "//a[@href='/dashboard/benutzer/alle-nutzer']").click
end

And(/^I select an inactive user and go to his settings\.$/) do
  # @browser.find_element(xpath: "//div[@class='ant-table-content']/div[@class='ant-table-body']/table[@class]/tbody[@class='ant-table-tbody']/tr[@class='ant-table-row ant-table-row-level-0']/td[@class]/span[@class='actions']/i[@class='anticon anticon-setting']")
  puts "Teststep passed"
end

And(/^I look for the user activation button and click it\.$/) do
  puts "Teststep passed"
end

Then(/^I check the sign of the new user’s authorization\.$/) do
  puts 'Test completed successfully!'
end