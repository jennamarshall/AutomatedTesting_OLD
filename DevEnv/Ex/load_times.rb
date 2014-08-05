require "json"
require "selenium-webdriver"
gem "test-unit"
require "test/unit"

class MathCheck< Test::Unit::TestCase

def setup
    @driver = Selenium::WebDriver.for :chrome
    @base_url = "https://devdb5.esosuite.net/EsoSuiteHotfixDaily/"
    @accept_next_alert = true
    @verification_errors = []
  end
  
def wait_for(seconds=10)
  Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
end
  
  def displayed?(how, what)
  @driver.find_element(how, what).displayed?
  true
  rescue Selenium::WebDriver::Error::NoSuchElementError
    false
end
  
  def teardown
    assert_equal [], @verification_errors
    @driver.quit
  end
  

  
  def test_math_check
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
	@driver.find_element(:xpath, "//div[text() = 'ePCR Reports']").click
	
	
    wait_for { displayed?(:xpath, "//div[text() = 'Operational Reports']") }
	@driver.find_element(:xpath, "//div[text() = 'Operational Reports']").click
	
	

# ##################################################################################################


	
    wait_for { displayed?(:xpath, "//div[text() = 'Average Chute Time']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Chute Time']").click
	time1 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '00:16']") }
	time2 = Time.now.getutc

	puts " "
	puts "********************************************************************************************************"
	time3 = (time2-time1)
	puts "Load Time: Average Chute Time: "+ time3.to_s
	puts "********************************************************************************************************"
	puts " "
	puts " "
		
	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Chute Time']") }
	
	
	
# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Average Chute Time By Hour of Day']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Chute Time By Hour of Day']").click
	time4 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '00:16']") }
	time5 = Time.now.getutc

	puts " "
	puts "********************************************************************************************************"
	time6 = (time5-time4)
	puts "Load Time: Average Chute Time By Hour of Day: "+ time6.to_s
	puts "********************************************************************************************************"
	puts " "
	puts " "

	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Chute Time By Hour of Day']") }
	

	
# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Average Chute Time By Unit']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Chute Time By Unit']").click
	time7 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '00:16']") }
	time8 = Time.now.getutc

	puts " "
	puts "********************************************************************************************************"
	time9 = (time8-time7)
	puts "Load Time: Average Chute Time By Unit: "+ time9.to_s
	puts "********************************************************************************************************"
	puts " "
	puts " "

	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Chute Time By Unit']") }

	

# ##################################################################################################







	
	
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
