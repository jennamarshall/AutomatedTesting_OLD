require "json"
require "selenium-webdriver"
gem "test-unit"
require "test/unit"


def setup
    @driver = Selenium::WebDriver.for :chrome
    @base_url = "https://devdb5.esosuite.net/EsoSuiteHotfixDaily/"
    @accept_next_alert = true
	@verification_errors = []
end

def wait_for(seconds=5)
  Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
end

def run
  setup
  yield
  rescue StandardError => error
    puts error.message
    @driver.save_screenshot "./#{Time.now.strftime("failshot__%d_%m_%Y__%H_%M_%S")}.png"
  teardown
end

run {
 @driver.get(@base_url)
    @driver.find_element(:id, "UserName").clear
    @driver.find_element(:id, "UserName").send_keys "jenna"
    @driver.find_element(:id, "Password").clear
    @driver.find_element(:id, "Password").send_keys ".alice78."
    @driver.find_element(:id, "AgencyLoginId").clear
    @driver.find_element(:id, "AgencyLoginId").send_keys "wonderland"
    @driver.find_element(:id, "btnLogin").click
    @driver.find_element(:css, "img[alt=\"analytics\"]").click
	sleep (4)
    @driver.find_element(:xpath, "//div[text() = 'ePCR Reports']").click		
	sleep (4)
    @driver.find_element(:xpath, "//div[text() = 'Operational Reports']").click  
}

def displayed?(how, what)
  @driver.find_element(how, what).displayed?
  true
  rescue Selenium::WebDriver::Error::NoSuchElementError
  false
end

def element_present?(how, what)
  @driver.find_element(how, what).element_present?
  true
  rescue Selenium::WebDriver::Error::NoSuchElementError
  false
end


def teardown
  @driver.quit
end