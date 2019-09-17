require 'date'

class MyNewMemberData
  def monthmember
    my_month_member_int = Date.today.month

    if my_month_member_int == 1
      my_month_member = 'January'
    elsif my_month_member_int == 2
      my_month_member = 'February'
    elsif my_month_member_int == 3
      my_month_member = 'March'
    elsif my_month_member_int == 4
      my_month_member = 'April'
    elsif my_month_member_int == 5
      my_month_member = 'May'
    elsif my_month_member_int == 6
      my_month_member = 'June'
    elsif my_month_member_int == 7
      my_month_member = 'July'
    elsif my_month_member_int == 8
      my_month_member = 'August'
    elsif my_month_member_int == 9
      my_month_member = 'September'
    elsif my_month_member_int == 10
      my_month_member = 'October'
    elsif my_month_member_int == 11
      my_month_member = 'November'
    else
      my_month_member = 'December'
    end

    return my_month_member
  end

  def daymember
    my_day_member = Date.today.day
    return my_day_member
  end

  def timemember
    my_time_member = Time.now.hour
    return my_time_member
  end

  def timemember_minutes
    my_time_member_minuts = Time.now.min

    return my_time_member_minuts
  end
end

my_new_member = MyNewMemberData.new
my_new_member.monthmember
my_new_member.daymember
my_new_member.timemember
my_new_member.timemember_minutes

Given(/^I open browser testcase\.$/) do
  @browser.manage.window.maximize
  @wait = Selenium::WebDriver::Wait.new(timeout: 20)
  url = 'https://hagedoo.de'
  @browser.navigate.to url
end

And(/^I go to page for autorization page for authorization\.$/) do
  @browser.find_element(xpath: "//li[@class='header-item header-button header-login ']/a").click
  @wait.until { @browser.find_element(xpath: "//form[@class='form']/h1[@class='login-title']").displayed? }

  @browser.find_element(xpath: "//div[@class='count-container']/div[@class='cookieConsent cookie-cont']/button[@class='btn-cookie']").click
end

When(/^I enter the user data in the authorization form\.$/) do
  login_email_customer = "testcustomergen@mailforspam.com"
  password_customer = "123456"
  @browser.find_element(xpath: "//input[@id='email-field']").send_keys login_email_customer
  @browser.find_element(xpath: "//input[@id='password-field']").send_keys password_customer
end

And(/^I click on the login button and go to the workspace page\.$/) do
  @browser.find_element(xpath: "//button[@class='button']").submit
  # @wait.until { @browser.find_element(xpath: "//div[@class='base']/div[@class='links-block']/a[@class='link active']").displayed? }
  # @wait.until { @browser.find_element(xpath: "//i[@class='anticon anticon-home']").displayed? }
  @wait.until { @browser.find_element(xpath: "//div[@class='site-title']/div[@class='title']/div[@class='arrow']").displayed? }
end

And(/^I click on 3 dots icon and click invite a new member button$/) do
  # @browser.find_element(xpath: "//div[@class='site-title']/div[@class='title']/div[@class='actions']").click
  # @browser.find_element(xpath: "//div[@class='site-title']/div[@class='title']/div[@class='actions']/img[@class='ellipsis']").click
  @wait.until { @browser.find_element(xpath: "//div[@class='site-title']/div[@class='actions']").displayed? }
  @browser.find_element(xpath: "//div[@class='site-title']/div[@class='actions']/img[@class='ellipsis']").click
  @wait.until { @browser.find_element(xpath: "//div[@class='option-link first-hover']").displayed? }
  @browser.find_element(xpath: "//div[@class='option-link first-hover']").click
  @wait.until { @browser.find_element(xpath: "//div[@class='ant-modal-body']").displayed? }
end

And(/^Enter the firstname member in the textbox\.$/) do
  @wait.until { @browser.find_element(xpath: "//form[@class='form']/div[@class='input-wrapper']/div[@class='input-box      Input__Style-wgv8fq-0 gkMYZq']/div[@class='floating-input  ']/label/input[@name='firstName']").displayed? }
  first_name = 'testmember' + my_new_member.monthmember
  @browser.find_element(xpath: "//form[@class='form']/div[@class='input-wrapper']/div[@class='input-box      Input__Style-wgv8fq-0 gkMYZq']/div[@class='floating-input  ']/label/input[@name='firstName']").send_keys first_name
end

And(/^Enter the lastname member in the textbox\.$/) do
  @wait.until { @browser.find_element(xpath: "//form[@class='form']/div[@class='input-wrapper']/div[@class='input-box      Input__Style-wgv8fq-0 gkMYZq']/div[@class='floating-input  ']/label/input[@name='lastName']").displayed? }
  last_name = 'testmember' + my_new_member.monthmember
  @browser.find_element(xpath: "//form[@class='form']/div[@class='input-wrapper']/div[@class='input-box      Input__Style-wgv8fq-0 gkMYZq']/div[@class='floating-input  ']/label/input[@name='lastName']").send_keys last_name
end

And(/^Enter the email member in the textbox\.$/) do
  @wait.until { @browser.find_element(xpath: "//form[@class='form']/div[@class='input-wrapper']/div[@class='input-box      Input__Style-wgv8fq-0 gkMYZq']/div[@class='floating-input  ']/label/input[@name='email']").displayed? }
  email_verble = 'testmember' + my_new_member.monthmember + my_new_member.daymember.to_s + my_new_member.timemember.to_s + my_new_member.timemember_minutes.to_s + '@mailforspam.com'
  @browser.find_element(xpath: "//form[@class='form']/div[@class='input-wrapper']/div[@class='input-box      Input__Style-wgv8fq-0 gkMYZq']/div[@class='floating-input  ']/label/input[@name='email']").send_keys email_verble
end

And(/^Enter the phone member in the textbox\.$/) do
  @wait.until { @browser.find_element(xpath: "//form[@class='form']/div[@class='input-wrapper']/div[@class='input-box      Input__Style-wgv8fq-0 gkMYZq']/div[@class='floating-input  ']/label/input[@name='phone']").displayed? }
  phone_number = 768678768
  @browser.find_element(xpath: "//form[@class='form']/div[@class='input-wrapper']/div[@class='input-box      Input__Style-wgv8fq-0 gkMYZq']/div[@class='floating-input  ']/label/input[@name='phone']").send_keys phone_number
end

And(/^Enter the role member in the box\.$/) do
  @wait.until { @browser.find_element(xpath: "//form[@class='form']/div[@class='input-wrapper']/div[@class='ant-select-lg ant-select ant-select-enabled']").displayed? }
  @browser.find_element(xpath: "//form[@class='form']/div[@class='input-wrapper']/div[@class='ant-select-lg ant-select ant-select-enabled']").click
  # @wait.until { @browser.find_element(xpath: "//div[@class='ant-select-dropdown ant-select-dropdown--single ant-select-dropdown-placement-bottomLeft  ant-select-dropdown-hidden']/div/ul[@class='ant-select-dropdown-menu  ant-select-dropdown-menu-root ant-select-dropdown-menu-vertical']/li[.='Mitarbeiter']").displayed? }
  # @browser.find_element(xpath: "//div[@class='ant-select-dropdown ant-select-dropdown--single ant-select-dropdown-placement-bottomLeft  ant-select-dropdown-hidden']/div/ul[@class='ant-select-dropdown-menu  ant-select-dropdown-menu-root ant-select-dropdown-menu-vertical']/li[.='Mitarbeiter']")
end

And(/^I click on invete a new member button$/) do
  @wait.until { @browser.find_element(xpath: "//button[@class='button']").displayed? }
  if @browser.find_element(xpath: "//button[@disabled]")
    puts 'Weit!'
  else
    @browser.find_element(xpath: "//button[@class='button']").submit
  end
end

Then(/^I check the invention member result\.$/) do
  puts 'Test completed successfully!'
end