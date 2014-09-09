require "json"
require "selenium-webdriver"
gem "test-unit"
require "test/unit"

class MathCheck< Test::Unit::TestCase

def setup
    @driver = Selenium::WebDriver.for :chrome
    @base_url = "https://devdb5.esosuite.net/EsoSuiteHotfixDaily/"
    @accept_next_alert = true
    @driver.manage.timeouts.implicit_wait = 30
    @verification_errors = []
  end
  
  def teardown
    assert_equal [], @verification_errors
    @driver.quit
  end
  

  
  def test_math_check
    @driver.get(@base_url)
    assert_equal "ESO Solutions :: NextGen", @driver.title
    @driver.find_element(:id, "UserName").clear
    @driver.find_element(:id, "UserName").send_keys "jenna"
    @driver.find_element(:id, "Password").clear
    @driver.find_element(:id, "Password").send_keys ".alice77."
    @driver.find_element(:id, "AgencyLoginId").clear
    @driver.find_element(:id, "AgencyLoginId").send_keys "wonderland"
    @driver.find_element(:id, "btnLogin").click
    @driver.find_element(:css, "img[alt=\"analytics\"]").click
	
	
	@driver.find_element(:xpath, "//div[text() = 'ePCR Reports']").click
    sleep (4)
    @driver.find_element(:xpath, "//div[text() = 'Operational Reports']").click
    sleep (4)
	@driver.find_element(:xpath, "//div[text() = 'Average Response Time']").click
	sleep (4)
	@driver.find_element(:css, "div.label.ng-binding").click
    @driver.find_element(:xpath, "//div[3]/div/div/div[3]/div[6]").click
	sleep (4)
	@driver.find_element(:xpath, "//*[contains(.,'21:52')]")
	
	sleep (4)
	@driver.navigate() .back();
    sleep (4)
	@driver.navigate() .back();
    sleep (4)
	
	@driver.find_element(:xpath, "//div[text() = 'ePCR Reports']").click
    sleep (4)
    @driver.find_element(:xpath, "//div[text() = 'Operational Reports']").click
    sleep (4)
	@driver.find_element(:xpath, "//div[text() = 'Average Response Time By Hour of Day']").click
	sleep (4)
	@driver.find_element(:css, "div.label.ng-binding").click
    @driver.find_element(:xpath, "//div[3]/div/div/div[3]/div[6]").click
	sleep (4)
	@driver.find_element(:xpath, "//*[contains(.,'20:57')]")
	
	sleep (4)
	@driver.navigate() .back();
    sleep (4)
	@driver.navigate() .back();
    sleep (4)
	
	@driver.find_element(:xpath, "//div[text() = 'ePCR Reports']").click
    sleep (4)
    @driver.find_element(:xpath, "//div[text() = 'Operational Reports']").click
    sleep (4)
	@driver.find_element(:xpath, "//div[text() = 'Average Response Time By Unit']").click
	sleep (4)
	@driver.find_element(:css, "div.label.ng-binding").click
    @driver.find_element(:xpath, "//div[3]/div/div/div[3]/div[6]").click
	sleep (4)
	@driver.find_element(:xpath, "//*[contains(.,'21:43')]")
	

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
