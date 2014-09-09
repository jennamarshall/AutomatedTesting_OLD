require "json"
require "selenium-webdriver"
gem "test-unit"
require "test/unit"

class LoginToNavigator < Test::Unit::TestCase

def setup
    @driver = Selenium::WebDriver.for :chrome, :switches => %w[--test-type]
    @base_url = "https://devdb5.esosuite.net/EsoSuiteHotfixDaily/"
    @accept_next_alert = true
    @verification_errors = []
    @driver.manage.timeouts.implicit_wait = 30
  end
  
def wait_for(seconds=60)
  Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
end
  
  def displayed?(how, what)
  @driver.find_element(how, what).displayed?
end

def find_visible_element(how, what)
	 elems = @driver.find_elements(how, what).select { |e| e.displayed? }
	 len = elems.length
		 if len == 0
		  raise "No matches found."
		 elsif len > 1
	  raise "Ambiguous match. Found #{len} matches."
	 end
	 elems.first
end
  
  def teardown
    assert_equal [], @verification_errors
    @driver.quit
  end
  
  def test_login_to_navigator
  
    @driver.get(@base_url)
    @driver.get(@base_url)
    @driver.find_element(:id, "UserName").clear
    @driver.find_element(:id, "UserName").send_keys "admin"
    @driver.find_element(:id, "Password").clear
    @driver.find_element(:id, "Password").send_keys ".admin77."
    @driver.find_element(:id, "AgencyLoginId").clear
    @driver.find_element(:id, "AgencyLoginId").send_keys "bi"
    @driver.find_element(:id, "btnLogin").click
    @driver.find_element(:css, "img[alt=\"analytics\"]").click
    wait_for { displayed?(:xpath, "//div[text() = 'ePCR Reports']") }


  end
  
    def element_present?(how, what)
    @driver.find_element(how, what)
    true
  rescue Selenium::WebDriver::Error::NoSuchElementError
    false
  end
  
  def alert_present?()
    @driver.switch_to.alert
    true
  rescue Selenium::WebDriver::Error::NoAlertPresentError
    false
  end
  
  def verify(&blk)
    yield
  rescue Test::Unit::AssertionFailedError => ex
    @verification_errors << ex
  end
  
  def close_alert_and_get_its_text(how, what)
    alert = @driver.switch_to().alert()
    alert_text = alert.text
    if (@accept_next_alert) then
      alert.accept()
    else
      alert.dismiss()
    end
    alert_text
  ensure
    @accept_next_alert = true
  end
end