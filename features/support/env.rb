require 'selenium-webdriver'
# require 'parallel'
require 'cucumber'
require 'capybara/cucumber'
require 'report_builder'

ENV['BS_USERNAME'] = 'marcborowy1'
ENV['BS_AUTHKEY'] = 'qxqmjPtLVVfyRvuSBmR4'

ENV['BS_PLATFORM'] = 'WINDOWS10'

url = "http://#{ENV['BS_USERNAME']}:#{ENV['BS_AUTHKEY']}@hub-cloud.browserstack.com/wd/hub"

capabilities = Selenium::WebDriver::Remote::Capabilities.new

capabilities['project'] = ENV['BS_AUTOMATE_PROJECT'] if ENV['BS_AUTOMATE_PROJECT']
capabilities['build'] = ENV['BS_AUTOMATE_BUILD'] if ENV['BS_AUTOMATE_BUILD']

if ENV['BS_AUTOMATE_OS']
  capabilities['os'] = ENV['BS_AUTOMATE_OS']
  capabilities['os_version'] = ENV['BS_AUTOMATE_OS_VERSION']
else
  # capabilities['platform'] = ENV['SELENIUM_PLATFORM'] || 'ANY'
  capabilities['platform'] = ENV['BS_PLATFORM']
end

capabilities['browser'] = ENV['SELENIUM_BROWSER'] || 'chrome'
capabilities['browser_version'] = ENV['SELENIUM_VERSION'] if ENV['SELENIUM_VERSION']
capabilities['name'] = 'Hagedoo.de small regression'

capabilities['browserstack.local'] = 'true'
capabilities['browserstack.debug'] = 'true'
capabilities['browserstack.video'] = 'true'
capabilities['browserstack.console'] = 'errors'
capabilities['browserstack.networkLogs'] = 'true'
capabilities['browserstack.appiumLogs'] = 'true'

if ENV['BS_PLATFORM'] == 'MAC_MOJAVE_CHROME'
  capabilities['browser'] = 'Chrome'
  capabilities['browser_version'] = '76.0'
  capabilities['os'] = 'OS X'
  capabilities['os_version'] = 'Mojave'
  capabilities['resolution'] = '1920x1080'
elsif ENV['BS_PLATFORM'] == 'MAC_MOJAVE_SAFARI'
  capabilities['browser'] = 'Safari'
  capabilities['browser_version'] = '12.1'
  capabilities['os'] = 'OS X'
  capabilities['os_version'] = 'Mojave'
  capabilities['resolution'] = '1920x1080'
elsif ENV['BS_PLATFORM'] == 'WINDOWS10'
  capabilities['browser'] = 'Chrome'
  capabilities['browser_version'] = '76.0'
  capabilities['os'] = 'Windows'
  capabilities['os_version'] = '10'
  capabilities['resolution'] = '1920x1080'
elsif ENV['BS_PLATFORM'] == 'LOCAL'
  # Browser Chrome for macOS and Windows
  to_chrome_mac_path = 'drivers/macOS/chromedriver' # Chrome driver for macOS
  to_chrome_win_path = 'drivers/Windows/chromedriver.exe' # Chrome driver for Windows

  # Browser Firefox for macOS and Windows
  to_firefox_mac_path = 'drivers/Windows/geckodriver.exe' # Firefox driver for macOS
  to_firefox_win_path = 'drivers/Windows/geckodriver.exe' # Firefox driver for Windows
else
  capabilities['browser'] = 'Chrome'
  capabilities['browser_version'] = '76.0'
  capabilities['os'] = 'Windows'
  capabilities['os_version'] = '7'
  capabilities['resolution'] = '1920x1080'
end

#if ENV['BS_PLATFORM'] == 'LOCAL'
#  browser = Selenium::WebDriver.for :chrome, driver_path: to_chrome_mac_path
#else
#  browser = Selenium::WebDriver.for(:remote, :url => url, :desired_capabilities => capabilities)
#end

browser = Selenium::WebDriver.for(:remote, :url => url, :desired_capabilities => capabilities)

Before do |scenario|
  @browser = browser
end

at_exit do
  browser.quit
end