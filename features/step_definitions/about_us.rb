Given(/^I open browser for about us page\.$/) do
  @browser.manage.window.maximize
  @wait = Selenium::WebDriver::Wait.new(timeout: 20)
  # url = 'https://hagedoo.de'
  @url_project = 'https://staging.hagedoo.de/'
  @browser.navigate.to @url_project
end

When(/^I go to About us page\.$/) do
  @browser.find_element(xpath: "//li[@class='header-item header-about-us ']").click
  @wait.until { @browser.find_element(xpath: "//div[@class='description']").displayed? }
end

And(/^I find element second title\.$/) do
  @browser.find_element(xpath: "//div[@class='second-block']/div[@class='title-block']/h3")
end

And(/^I find element button recall for about us\.$/) do
  @browser.find_element(xpath: "//div[@class='question-text']/a[@class='button-link']")
end

And(/^I find element button Get an offer now for about us\.$/) do
  @browser.find_element(xpath: "//div[@class='container']/button[@class='subscribe-btn']")
end

Then(/^Test complate for about us\.$/) do
  puts 'Test completed successfully!'
end