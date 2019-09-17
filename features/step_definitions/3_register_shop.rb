require 'date'

class MyUserData
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

my_user = MyUserData.new
my_user.monthuser
my_user.dayuser
my_user.timeuser
my_user.timeuser_minutes

Given(/^I go to register a shop page.$/) do
  @browser.manage.window.maximize
  @wait = Selenium::WebDriver::Wait.new(timeout: 20)
  url = 'https://hagedoo.de/arbeitsplatz/store-registrieren'
  @browser.navigate.to url
end

When(/^Enter the firstname in the textbox$/) do
  first_name = 'testuser' + my_user.monthuser + my_user.dayuser.to_s + my_user.timeuser.to_s + my_user.timeuser_minutes.to_s
  @browser.find_element(xpath: "//input[@name='firstName']").send_keys first_name
end

And(/^Enter the lastname in the textbox$/) do
  last_name = 'testuser' + my_user.monthuser + my_user.dayuser.to_s + my_user.timeuser.to_s + my_user.timeuser_minutes.to_s
  @browser.find_element(xpath: "//input[@name='lastName']").send_keys last_name
end

And(/^Enter the phone in the textbox$/) do
  phone_number = 768678768
  @browser.find_element(xpath: "//input[@name='phoneNumber']").send_keys phone_number
end

And(/^Enter the email in the textbox$/) do
  email_verble = 'testuser' + my_user.monthuser + my_user.dayuser.to_s + my_user.timeuser.to_s + '.' + my_user.timeuser_minutes.to_s + '@mailforspam.com'
  @browser.find_element(xpath: "//input[@name='email']").send_keys email = email_verble
end

And(/^Enter the shop name in the textbox$/) do
  store_name = 'testuser' + my_user.monthuser + my_user.dayuser.to_s + my_user.timeuser.to_s + my_user.timeuser_minutes.to_s + 'company'
  @browser.find_element(xpath: "//input[@name='storeName']").send_keys store_name
end

And(/^Enter the shop adress in the textbox$/) do
  store_adress = 'Mitte, Berlin, Germany'
  @browser.find_element(xpath: "//textarea[@name='storeAddress']").send_keys store_adress
  @browser.find_element(xpath: "//textarea[@name='storeAddress']").click
end

Then(/^I accept the terms and conditions and privacy policy$/) do
  @browser.find_element(xpath: "//input[@name='accept']").click
  @browser.find_element(xpath: "//button[@class='submitButton']")
  my_btn = @browser.find_element(xpath: "//button[@class='submitButton']")
  my_btn.location_once_scrolled_into_view
  @browser.find_element(xpath: "//button[@class='submitButton']").submit
end

And(/^I check the registration result$/) do
  @wait.until {
    @browser.find_element(xpath: "//p[@class='subTitle']").displayed?
  }

  puts 'Test completed successfully!'
end