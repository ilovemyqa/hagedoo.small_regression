Given(/^I open browser for AGB page\.$/) do
  @browser.manage.window.maximize
  @wait = Selenium::WebDriver::Wait.new(timeout: 20)
  url = 'https://hagedoo.de'
  @browser.navigate.to url
end

When(/^I go to AGB page\.$/) do
  if @browser.find_element(xpath: "//div[@class='count-container']/div[@class='cookieConsent cookie-cont']/button[@class='btn-cookie']")
    @browser.find_element(xpath: "//div[@class='count-container']/div[@class='cookieConsent cookie-cont']/button[@class='btn-cookie']").click
  end

  @browser.find_element(xpath: "//div[@class='footer-block legal-links']/ul/li/a[@href='/datenschutz']")
  my_btn = @browser.find_element(xpath: "//div[@class='footer-block legal-links']/ul/li/a[@href='/datenschutz']")
  my_btn.location_once_scrolled_into_view
  @browser.find_element(xpath: "//div[@class='footer-block legal-links']/ul/li/a[@href='/tos']").click
  @wait.until { @browser.find_element(xpath: "//div[@class='content-wrapper']/div[@class='Styles-sc-8vc1jc-0 kpWbXn']/h2[@class='title']").displayed? }
end

And(/^I find element title for AGB page\.$/) do
  @browser.find_element(xpath: "//div[@class='content-wrapper']/div[@class='Styles-sc-8vc1jc-0 kpWbXn']/h2[@class='title']")
end

And(/^I find element button 1 for AGB page\.$/) do
  @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph0']")
  my_btn_p1 = @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph0']")
  my_btn_p1.location_once_scrolled_into_view
  my_btn_p1.click

  @browser.find_element(xpath: "//div[@class='paragraphs']/div/h4[@id='geltungsbereich']")
end

And(/^I find element button 2 for AGB page\.$/) do
  @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph1']")
  my_btn_p2 = @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph1']")
  my_btn_p2.location_once_scrolled_into_view
  my_btn_p2.click

  @browser.find_element(xpath: "//div[@class='paragraphs']/div/h4[@id='leistungserbringung']")
end

And(/^I find element button 3 for AGB page\.$/) do
  @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph2']")
  my_btn_p3 = @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph2']")
  my_btn_p3.location_once_scrolled_into_view
  my_btn_p3.click

  @browser.find_element(xpath: "//div[@class='paragraphs']/div/h4[@id='vertragsschluss']")
end

And(/^I find element button 4 for AGB page\.$/) do
  @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph3']")
  my_btn_p4 = @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph3']")
  my_btn_p4.location_once_scrolled_into_view
  my_btn_p4.click

  @browser.find_element(xpath: "//div[@class='paragraphs']/div/h4[@id='pflichten']")
end

And(/^I find element button 5 for AGB page\.$/) do
  @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph4']")
  my_btn_p5 = @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph4']")
  my_btn_p5.location_once_scrolled_into_view
  my_btn_p5.click

  @browser.find_element(xpath: "//div[@class='paragraphs']/div/h4[@id='vergütung']")
end

And(/^I find element button 6 for AGB page\.$/) do
  @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph5']")
  my_btn_p6 = @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph5']")
  my_btn_p6.location_once_scrolled_into_view
  my_btn_p6.click

  @browser.find_element(xpath: "//div[@class='paragraphs']/div/h4[@id='vertragsänderungen']")
end

And(/^I find element button 7 for AGB page\.$/) do
  @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph6']")
  my_btn_p7 = @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph6']")
  my_btn_p7.location_once_scrolled_into_view
  my_btn_p7.click

  @browser.find_element(xpath: "//div[@class='paragraphs']/div/h4[@id='leistungszeit']")
end

And(/^I find element button 8 for AGB page\.$/) do
  @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph7']")
  my_btn_p8 = @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph7']")
  my_btn_p8.location_once_scrolled_into_view
  my_btn_p8.click

  @browser.find_element(xpath: "//div[@class='paragraphs']/div/h4[@id='abnahme']")
end

And(/^I find element button 9 for AGB page\.$/) do
  @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph8']")
  my_btn_p9 = @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph8']")
  my_btn_p9.location_once_scrolled_into_view
  my_btn_p9.click

  @browser.find_element(xpath: "//div[@class='paragraphs']/div/h4[@id='eigentumsvorbehalt']")
end

And(/^I find element button 10 for AGB page\.$/) do
  @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph9']")
  my_btn_p10 = @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph9']")
  my_btn_p10.location_once_scrolled_into_view
  my_btn_p10.click

  @browser.find_element(xpath: "//div[@class='paragraphs']/div/h4[@id='aufrechnung']")
end

And(/^I find element button 11 for AGB page\.$/) do
  @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph10']")
  my_btn_p11 = @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph10']")
  my_btn_p11.location_once_scrolled_into_view
  my_btn_p11.click

  @browser.find_element(xpath: "//div[@class='paragraphs']/div/h4[@id='streitbeilegungsverfahren']")
end

And(/^I find element button 12 for AGB page\.$/) do
  @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph11']")
  my_btn_p12 = @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph11']")
  my_btn_p12.location_once_scrolled_into_view
  my_btn_p12.click

  @browser.find_element(xpath: "//div[@class='paragraphs']/div/h4")
end

And(/^I find element button 13 for AGB page\.$/) do
  @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph12']")
  my_btn_p13 = @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph12']")
  my_btn_p13.location_once_scrolled_into_view
  my_btn_p13.click

  @browser.find_element(xpath: "//div[@class='paragraphs']/div/h4[@id='hinweis']")
end

And(/^I find element button 14 for AGB page\.$/) do
  @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph13']")
  my_btn_p14 = @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph13']")
  my_btn_p14.location_once_scrolled_into_view
  my_btn_p14.click

  @browser.find_element(xpath: "//div[@class='paragraphs']/div/h4[@id='hinweise']")
end

And(/^I find element button 15 for AGB page\.$/) do
 @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph14']")
  my_btn_p15 = @browser.find_element(xpath: "//ul[@class='anchors']/li/a[@href='#paragraph14']")
  my_btn_p15.location_once_scrolled_into_view
  my_btn_p15.click

 @browser.find_element(xpath: "//div[@class='paragraphs']/div/h4[@id='ausschluss']")
end

Then(/^Test complate for AGB page\.$/) do
  puts 'Test completed successfully!'
end