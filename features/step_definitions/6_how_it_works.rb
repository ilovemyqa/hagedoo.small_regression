Given(/^I open browser for testing page\.$/) do
  @browser.manage.window.maximize
  @wait = Selenium::WebDriver::Wait.new(timeout: 20)
  url = 'https://hagedoo.de'
  @browser.navigate.to url
end

When(/^I go to How oi work page\.$/) do
  @browser.find_element(xpath: "//li[@class='header-item header-how-it-works ']").click
  @wait.until { @browser.find_element(xpath: "//div[@class='header-container']").displayed? }
end

And(/^I find element title\.$/) do
  @browser.find_element(xpath: "//div[@class='header-container']")
end

And(/^I find element title 2\.$/) do
  @browser.find_element(xpath: "//div[@class='styles-sc-1htfc9h-0 fmweCP']/div[@class='container']/div[@class='text']/h3")
end

And(/^I find element button recall$/) do
  @browser.find_element(xpath: "//div[@class='question-text']/a[@class='button-link']")
end

And(/^I find element button Get an offer now$/) do
  @browser.find_element(xpath: "//div[@class='container']/button[@class='subscribe-btn']")
end

Then(/^Test complate$/) do
  puts 'Test completed successfully!'
end