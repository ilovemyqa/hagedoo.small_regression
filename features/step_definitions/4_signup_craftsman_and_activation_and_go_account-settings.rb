require 'date'

class MyCraftsmanData
  def monthcraftsman
    my_month_craftsman_int = Date.today.month

    if my_month_craftsman_int == 1
      my_month_craftsman = 'January'
    elsif my_month_craftsman_int == 2
      my_month_craftsman = 'February'
    elsif my_month_craftsman_int == 3
      my_month_craftsman = 'March'
    elsif my_month_craftsman_int == 4
      my_month_craftsman = 'April'
    elsif my_month_craftsman_int == 5
      my_month_craftsman = 'May'
    elsif my_month_craftsman_int == 6
      my_month_craftsman = 'June'
    elsif my_month_craftsman_int == 7
      my_month_craftsman= 'July'
    elsif my_month_craftsman_int == 8
      my_month_craftsman = 'August'
    elsif my_month_craftsman_int == 9
      my_month_craftsman= 'September'
    elsif my_month_craftsman_int == 10
      my_month_craftsman = 'October'
    elsif my_month_user_int == 11
      my_month_craftsman = 'November'
    else
      my_month_craftsman = 'December'
    end

    return my_month_craftsman
  end

  def daycraftsman
    my_day_craftsman = Date.today.day
    return my_day_craftsman
  end

  def timecraftsman
    my_time_craftsman = Time.now.hour
    return my_time_craftsman
  end

  def timecraftsman_minutes
    my_time_craftsman_minuts = Time.now.min

    return my_time_craftsman_minuts
  end
end

my_craftsman = MyCraftsmanData.new
my_craftsman.monthcraftsman
my_craftsman.daycraftsman
my_craftsman.timecraftsman
my_craftsman.timecraftsman_minutes

Given(/^I go to registration craftsman  page\.$/) do
  @browser.manage.window.maximize
  @wait = Selenium::WebDriver::Wait.new(timeout: 20)
  url = 'https://hagedoo.de/registrieren-handwerker'
  @browser.navigate.to url
end

When(/^Enter the firstname craftsman in the textbox\.$/) do
  if @browser.find_element(xpath: "//div[@class='count-container']/div[@class='cookieConsent cookie-cont']/button[@class='btn-cookie']")
    @browser.find_element(xpath: "//div[@class='count-container']/div[@class='cookieConsent cookie-cont']/button[@class='btn-cookie']").click
  end

  first_name = 'testcraftsman' + my_craftsman.monthcraftsman + my_craftsman.daycraftsman.to_s + my_craftsman.timecraftsman.to_s + '.' + my_craftsman.timecraftsman_minutes.to_s
  @browser.find_element(xpath: "//input[@name='firstName']").send_keys first_name
end

And(/^Enter the lastname craftsman in the textbox\.$/) do
  last_name = 'testcraftsman' + my_craftsman.monthcraftsman + my_craftsman.daycraftsman.to_s + my_craftsman.timecraftsman.to_s + '.' + my_craftsman.timecraftsman_minutes.to_s
  @browser.find_element(xpath: "//input[@name='lastName']").send_keys last_name
end

And(/^Enter the email craftsman in the textbox\.$/) do
  email_verble = 'testcraftsman' + my_craftsman.monthcraftsman + my_craftsman.daycraftsman.to_s + my_craftsman.timecraftsman.to_s + '.' + my_craftsman.timecraftsman_minutes.to_s + '@mailforspam.com'
  @browser.find_element(xpath: "//input[@name='email']").send_keys email = email_verble
end

And(/^Enter the phone craftsman in the textbox\.$/) do
  phone_number = 768678768
  @browser.find_element(xpath: "//input[@name='phoneNumber']").send_keys phone_number
end

And(/^Enter the adress in the textbox\.$/) do
  company_adress = "Mitte, Berlin, Germany"

  if @browser.find_element(xpath: "//textarea[.='']")
    @browser.find_element(xpath: "//textarea[@name='address']").send_keys company_adress
    puts company_adress
  else
    puts 'sdfs'
  end

  @browser.find_element(xpath: "//textarea[@name='address']").click
end

And(/^Enter the company name in the textbox\.$/) do
  company_name = 'testcraftsman' + my_craftsman.monthcraftsman + my_craftsman.daycraftsman.to_s + my_craftsman.timecraftsman.to_s + '.' + my_craftsman.timecraftsman_minutes.to_s + 'company'
  @browser.find_element(xpath: "//input[@name='companyName']").send_keys company_name
end

And(/^Enter the partner name in th textbox\.$/) do
  partner_name = 'partnercraftsman' + my_craftsman.monthcraftsman + my_craftsman.daycraftsman.to_s + my_craftsman.timecraftsman.to_s + '.' + my_craftsman.timecraftsman_minutes.to_s
  @browser.find_element(xpath: "//input[@name='partnerName']").send_keys partner_name
end

Then(/^I accept the terms and conditions and privacy policy for craftsman\.$/) do
  # @browser.find_element(xpath: "//input[@class='check']").click

  @browser.find_element(xpath: "//input[@class='check']").click
  # my_btn0 = @browser.find_element(xpath: "//input[@class='check']")
  # my_btn0.location_once_scrolled_into_view
  # my_btn0.click

  @wait.until { @browser.find_element(xpath: "//div[@class='confirm']/label/input[@class='check']/div[@class='buttons-next']").displayed? }

  @browser.find_element(xpath: "//div[@class='confirm']/label/input[@class='check']/div[@class='buttons-next']").click
  @browser.find_element(xpath: "//div[@class='confirm']/label/input[@class='check']/div[@class='buttons-next']")
  my_btn = @browser.find_element(xpath: "//div[@class='confirm']/label/input[@class='check']/div[@class='buttons-next']")
  my_btn.location_once_scrolled_into_view
  @browser.find_element(xpath: "//div[@class='confirm']/label/input[@class='check']/div[@class='buttons-next']").click
end

And(/^I check the registration craftsman result\.$/) do
  puts 'empty step'
end

When(/^I go to mailforspam.com serves for activation craftsman\.$/) do
  puts 'empty step'
end

And(/^Enter the email textbox and click button\.$/) do
  puts 'empty step'
end

And(/^Open activation email and click button\.$/) do
  puts 'empty step'
end

And(/^Enter the password in the textboxs\.$/) do
  puts 'empty step'
end

Then(/^I check the activation craftsman result\.$/) do
  puts 'Test completed successfully!'
end