Given(/^I open browser for workspace page\.$/) do
  @browser.manage.window.maximize
  @wait = Selenium::WebDriver::Wait.new(timeout: 20)
  url = 'https://hagedoo.de/'
  @browser.navigate.to url
end

When(/^I go to workspace landing page\.$/) do
  url = 'https://hagedoo.de/arbeitsplatz'
  @browser.navigate.to url
  @wait.until { @browser.find_element(xpath: "//div[@class='header-container']/div[@class='container-left']/h1[@class='title']").displayed? }
end

And(/^I find general page title\.$/) do
  @browser.find_element(xpath: "//div[@class='header-container']/div[@class='container-left']/h1[@class='title']")
end

And(/^I click button Use for free and click\.$/) do
  @browser.find_element(xpath: "//div[@class='header-container']/div[@class='container-left']/button[@class='register']").click
  @wait.until { @browser.find_element(xpath: "//div[@class='container']/h1[@class='title']").displayed? }

  url = 'https://hagedoo.de/arbeitsplatz'
  @browser.navigate.to url
  @wait.until { @browser.find_element(xpath: "//div[@class='header-container']/div[@class='container-left']/h1[@class='title']").displayed? }
  @browser.find_element(xpath: "//div[@class='about-workspace']/div[@class='container-top-block']/p[@class='title-workspace']")
  my_el7 = @browser.find_element(xpath: "//div[@class='about-workspace']/div[@class='container-top-block']/p[@class='title-workspace']")
  my_el7.location_once_scrolled_into_view
end

And(/^I fund h2 page title\.$/) do
  @browser.find_element(xpath: "//div[@class='about-workspace']/div[@class='container-top-block']/p[@class='title-workspace']")
  @browser.find_element(xpath: "//div[@class='about-workspace']/div[@class='container-top-block']/p[@class='subtitle-workspace']")
end

And(/^I click menu greate work hagedoo\.$/) do
  my_el = @browser.find_element(xpath: "//div[@class='about-workspace']/div[@class='slider-wrapper']")
  my_el.location_once_scrolled_into_view

  @browser.find_element(xpath: "//div[@class='slider-wrapper']/div[@class='slider-nav-wrapper']/nav[@class='slider-nav slider-nav-active-0']/div[@class='slider-item slider-item-active']")
end

And(/^I find about-marketplace menu\.$/) do
  my_el2 = @browser.find_element(xpath: "//div[@class='about-marketplace']")
  my_el2.location_once_scrolled_into_view
  @browser.find_element(xpath: "//div[@class='about-marketplace']")
  @browser.find_element(xpath: "//div[@class='about-marketplace']/div[@class='marketplace-bg']")
  @browser.find_element(xpath: "//div[@class='about-marketplace']/div[@class='marketplace-control']")
end

And(/^I find advantages-wrapper menu\.$/) do
  my_el3 = @browser.find_element(xpath: "//div[@class='advantages-wrapper']")
  my_el3.location_once_scrolled_into_view
  @browser.find_element(xpath: "//div[@class='advantages-wrapper']")
end

And(/^I find autorization menu\.$/) do
  my_el4 = @browser.find_element(xpath: "//div[@class='hagebau-service']")
  my_el4.location_once_scrolled_into_view

  if @browser.find_element(xpath: "//div[@class='count-container']/div[@class='cookieConsent cookie-cont']/button[@class='btn-cookie']")
    @browser.find_element(xpath: "//div[@class='count-container']/div[@class='cookieConsent cookie-cont']/button[@class='btn-cookie']").click
  end

  @browser.find_element(xpath: "//div[@class='hagebau-service']/div[@class='buttons-block']/button[@class='register']").click
  @wait.until { @browser.find_element(xpath: "//div[@class='container']/h1[@class='title']").displayed? }
  url_1 = 'https://hagedoo.de/arbeitsplatz'
  @browser.navigate.to url_1

  my_el5 = @browser.find_element(xpath: "//div[@class='hagebau-service']")
  my_el5.location_once_scrolled_into_view

  @browser.find_element(xpath: "//div[@class='hagebau-service']/div[@class='buttons-block']/button[@class='login']").click
  url_2 = 'https://hagedoo.de/arbeitsplatz'
  @browser.navigate.to url_2

  my_el6 = @browser.find_element(xpath: "//div[@class='hagebau-service']")
  my_el6.location_once_scrolled_into_view
end

Then(/^Test complate for workspace landing page\.$/) do
  puts 'Test completed successfully!'
end