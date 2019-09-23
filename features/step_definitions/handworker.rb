Given(/^I open browser for handworker page\.$/) do
  @browser.manage.window.maximize
  @wait = Selenium::WebDriver::Wait.new(timeout: 60)
  # url = 'https://hagedoo.de/handwerker'
  @url_project = 'https://staging.hagedoo.de/'
  @browser.navigate.to @url_project + 'handwerker'

end

When(/^Enter the zipcode in the textbox\.$/) do
  zipcode = 10117
  @browser.find_element(xpath: "//div[@class='zipcode-box']/div[@class='zipcode-cont']/input[@name='zipcode']").send_keys zipcode
end

And(/^Click the calculate new button\.$/) do
  @wait.until { @browser.find_element(xpath: "//button[@class='btn calculate active']").displayed? }
  @browser.find_element(xpath: "//button[@class='btn calculate active']").submit
  @wait.until { @browser.find_element(xpath: "//div[@class='zip-with-count']/div[@class='zip-with-count-wrapper']/p[@class='zip-title']").displayed? }
end

And(/^Click the Sign in directly button\.$/) do
  # @browser.find_element(xpath: "//div[@class='zip-with-count']/a[@class='btn register']").click
  # @browser.find_element(xpath: "//div[@class='form-inner']/button[@class='btn register']").click
  @browser.find_element(xpath: "//div[@class='header-form']/div[@class='form-container']/div[@class='styles-sc-1htfc9h-0 hBqQeE']/form/div[@class='form-inner']/button[@class='btn register']").click
  # @wait.until { @browser.find_element(xpath: "//form[@class='form handwerker-form']/h1[@class='title']").displayed? }
  @wait.until { @browser.find_element(xpath: "//h1[@class='title']").displayed? }
  # url = 'https://hagedoo.de/handwerker'
  @browser.navigate.to @url_project + 'handwerker'
end

And(/^Click the Craftsman Dashboard button\.$/) do
  @wait.until { @browser.find_element(xpath: "//div[@class='billing-element']/div[@class='container buy-build']").displayed? }
  @browser.find_element(xpath: "//div[@class='billing-element']/div[@class='container buy-build']")
  my_btn = @browser.find_element(xpath: "//div[@class='billing-element']/div[@class='infra-wrapper']")
  my_btn.location_once_scrolled_into_view

  @wait.until { @browser.find_element(xpath: "//div[@class='infra-nav-wrapper']/nav[@class='infra-nav infra-nav__active_0']/button[@id='point_0']").displayed? }
  @browser.find_element(xpath: "//div[@class='infra-nav-wrapper']/nav[@class='infra-nav infra-nav__active_0']/button[@id='point_0']")

  @wait.until { @browser.find_element(xpath: "//div[@class='infra-nav-wrapper']/nav[@class='infra-nav infra-nav__active_0']/button[@id='point_1']").displayed? }
  @browser.find_element(xpath: "//div[@class='infra-nav-wrapper']/nav[@class='infra-nav infra-nav__active_0']/button[@id='point_1']").click

  @wait.until { @browser.find_element(xpath: "//div[@class='infra-nav-wrapper']/nav[@class='infra-nav infra-nav__active_1']/button[@id='point_2']").displayed? }
  @browser.find_element(xpath: "//div[@class='infra-nav-wrapper']/nav[@class='infra-nav infra-nav__active_1']/button[@id='point_2']").click

  @wait.until { @browser.find_element(xpath: "//div[@class='infra-nav-wrapper']/nav[@class='infra-nav infra-nav__active_2']/button[@id='point_3']").displayed? }
  @browser.find_element(xpath: "//div[@class='infra-nav-wrapper']/nav[@class='infra-nav infra-nav__active_2']/button[@id='point_3']").click

  @wait.until { @browser.find_element(xpath: "//div[@class='infra-nav-wrapper']/nav[@class='infra-nav infra-nav__active_3']/button[@id='point_4']").displayed? }
  @browser.find_element(xpath: "//div[@class='infra-nav-wrapper']/nav[@class='infra-nav infra-nav__active_3']/button[@id='point_4']").click
end

And(/^I find element button recall for handworker\.$/) do
  @browser.find_element(xpath: "//div[@class='question-text']/a[@class='button-link']")
  # @browser.find_element(xpath: "//div[@class='question-text']/a[@class='button-link']").click
  # @wait.until { @browser.find_element(xpath: "//div[@class='meetings-page']").displayed? }
  # url = 'https://hagedoo.de/handwerker'
  # @browser.navigate.to url

  # @wait.until { @browser.find_element(xpath: "//div[@class='question-text']/a[@class='button-link']").displayed? }
  # my_btn = @browser.find_element(xpath: "//div[@class='question-text']/a[@class='button-link']")
  # my_btn.location_once_scrolled_into_view
end

And(/^I find element footer title handworker\.$/) do
  zipcode = 10117
  # @browser.find_element(xpath: "//div[@class='footer-form']/div[@class='form-inner']/div[@class='zipcode-box']/div[@class='zipcode-cont']/input[@name='zipcode']").send_keys zipcode
  @browser.find_element(xpath: "//div[@class='form-inner']/div[@class='zipcode-box']/div[@class='zipcode-cont']/input[@name='zipcode']").send_keys zipcode
  @browser.find_element(xpath: "//div[@class='form-inner']/button[@class='btn register']").click
  # @browser.find_element(xpath: "//div[@class='footer-form']/div[@class='form-inner']/button[@class='btn register']").click
  # @wait.until { @browser.find_element(xpath: "//form[@class='form handwerker-form']/h1[@class='title']").displayed? }
  @wait.until { @browser.find_element(xpath: "//h1[@class='title']").displayed? }
end

Then(/^Test complate for handworker\.$/) do
  puts 'Test completed successfully!'
end