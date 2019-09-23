require 'date'

class MyUserDataCustomer
  def monthuser
    my_month_user_int = Date.today.month

    if my_month_user_int == 1
      my_month_user = 'January'
    elsif my_month_user_int == 2
      my_month_user = 'February'
    elsif my_month_user_int == 3
      my_month_user = 'March'
    elsif my_month_user_int == 4
      my_month_user = 'April'
    elsif my_month_user_int == 5
      my_month_user = 'May'
    elsif my_month_user_int == 6
      my_month_user = 'June'
    elsif my_month_user_int == 7
      my_month_user = 'July'
    elsif my_month_user_int == 8
      my_month_user = 'August'
    elsif my_month_user_int == 9
      my_month_user = 'September'
    elsif my_month_user_int == 10
      my_month_user = 'October'
    elsif my_month_user_int == 11
      my_month_user = 'November'
    else
      my_month_user = 'December'
    end

    return my_month_user
  end

  def dayuser
    my_day_user = Date.today.day
    return my_day_user
  end

  def timeuser
    my_time_user = Time.now.hour
    return my_time_user
  end

  def timeuser_minutes
    my_time_user_minuts = Time.now.min

    return my_time_user_minuts
  end
end

my_user = MyUserDataCustomer.new
my_user.monthuser
my_user.dayuser
my_user.timeuser
my_user.timeuser_minutes

Given(/^I open browser\.$/) do
  @browser.manage.window.maximize
  @wait = Selenium::WebDriver::Wait.new(timeout: 20)
  # url = 'https://hagedoo.de'
  @url_project = 'https://staging.hagedoo.de/'
  @browser.navigate.to @url_project
end

And(/^I go to main page\.$/) do
  if @browser.find_element(xpath: "//div[@class='count-container']/div[@class='cookieConsent cookie-cont']/button[@class='btn-cookie']").displayed?
    @browser.find_element(xpath: "//div[@class='count-container']/div[@class='cookieConsent cookie-cont']/button[@class='btn-cookie']").click
  end

  @browser.find_element(xpath: "//li[@class='header-item header-button header-login ']/a[.='Login']").click
  @wait.until { @browser.find_element(xpath: "//form[@class='form']/h1[@class='login-title']").displayed? }
  @browser.find_element(xpath: "//div[@class='workspace']/div[@class='btn-group']/a[@class='new-login']")
  my_btn = @browser.find_element(xpath: "//div[@class='workspace']/div[@class='btn-group']/a[@class='new-login']")
  my_btn.location_once_scrolled_into_view
  @wait.until {
    @browser.find_element(xpath: "//div[@class='workspace']/div[@class='btn-group']/a[@class='new-login']").displayed?
  }
end

And(/^I go to login page\.$/) do
  @browser.find_element(xpath: "//div[@class='workspace']/div[@class='btn-group']/a[@class='new-login']").click
  @wait.until {
    @browser.find_element(xpath: "//input[@id='vorname']").displayed?
  }
end

When(/^Enter the firstname customer in the textbox\.$/) do
  first_name = 'testcustomer' + my_user.monthuser + my_user.dayuser.to_s + my_user.timeuser.to_s + '.' + my_user.timeuser_minutes.to_s
  @browser.find_element(xpath: "//input[@id='vorname']").send_keys first_name
end

And(/^Enter the lastname customer in the textbox\.$/) do
  last_name = 'testcustomer' + my_user.monthuser + my_user.dayuser.to_s + my_user.timeuser.to_s + '.' + my_user.timeuser_minutes.to_s
  @browser.find_element(xpath: "//input[@id='nachname']").send_keys last_name
end

And(/^Enter the email customer in the textbox\.$/) do
  email_verble = 'testcustomer' + my_user.monthuser + my_user.dayuser.to_s + my_user.timeuser.to_s + '.' + my_user.timeuser_minutes.to_s + '@mailforspam.com'
  @browser.find_element(xpath: "//input[@id='email']").send_keys email_verble
end

And(/^Enter the phone customer in the textbox\.$/) do
  phone_number = 768678768
  @browser.find_element(xpath: "//input[@id='telefon']").send_keys phone_number
end

Then(/^I accept the terms and conditions and privacy policy customer licence\.$/) do
  @browser.find_element(xpath: "//input[@name='accept']").click
  @browser.find_element(xpath: "//input[@name='policy']").click
  @browser.find_element(xpath: "//button[@class='btn-submit disabled']").click
end

And(/^I check the registration customer result\.$/) do
  @wait.until {
    @browser.find_element(xpath: "//p[@class='subTitle']").displayed?
  }

  puts 'Test completed successfully!'
end