require "json"
require "selenium-webdriver"
gem "test-unit"
require "test/unit"

class LoadTimes< Test::Unit::TestCase

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
  

  
  def test_load_times
    @driver.get(@base_url)
    @driver.find_element(:id, "UserName").clear
    @driver.find_element(:id, "UserName").send_keys "admin"
    @driver.find_element(:id, "Password").clear
    @driver.find_element(:id, "Password").send_keys ".alice77."
    @driver.find_element(:id, "AgencyLoginId").clear
    @driver.find_element(:id, "AgencyLoginId").send_keys "wonderland"
    @driver.find_element(:id, "btnLogin").click
    @driver.find_element(:css, "img[alt=\"analytics\"]").click
	
	
    wait_for { displayed?(:xpath, "//div[text() = 'ePCR Reports']") }
	@driver.find_element(:xpath, "//div[text() = 'ePCR Reports']").click
	
	
    wait_for { displayed?(:xpath, "//div[text() = 'Operational Reports']") }
	@driver.find_element(:xpath, "//div[text() = 'Operational Reports']").click
	
# ##################################################################################################

	time100 = Time.now.getutc
	puts " "
	puts "********************************************************************************************************"
	puts "Load Time is measured in seconds"
	puts "Load Time measures time from report name click to last element loads on initial report page"
	puts "Tested for BI Agency on devdb5 environment"
	puts "Tests executed in Google Chrome"
	puts "********************************************************************************************************"
	puts " "
	
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


	
    wait_for { displayed?(:xpath, "//div[text() = 'Average Response Time']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Response Time']").click
	time10 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '07:47']") }
	time11 = Time.now.getutc

	puts " "
	puts "********************************************************************************************************"
	time12 = (time11-time10)
	puts "Load Time: Average Response Time: "+ time12.to_s
	puts "********************************************************************************************************"
	puts " "
	puts " "
		
	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Response Time']") }
	
	
	
# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Average Response Time By Hour of Day']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Response Time By Hour of Day']").click
	time13 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '07:41']") }
	time14 = Time.now.getutc

	puts " "
	puts "********************************************************************************************************"
	time15= (time14-time13)
	puts "Load Time: Average Response Time By Hour of Day: "+ time15.to_s
	puts "********************************************************************************************************"
	puts " "
	puts " "

	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Response Time By Hour of Day']") }
	

	
# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Average Response Time By Unit']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Response Time By Unit']").click
	time16 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '07:45']") }
	time17 = Time.now.getutc

	puts " "
	puts "********************************************************************************************************"
	time18 = (time17-time16)
	puts "Load Time: Average Response Time By Unit: "+ time18.to_s
	puts "********************************************************************************************************"
	puts " "
	puts " "

	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Response Time By Unit']") }

	

# ##################################################################################################


	
    wait_for { displayed?(:xpath, "//div[text() = 'Average Scene Time']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Scene Time']").click
	time19 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '13:51']") }
	time20 = Time.now.getutc

	puts " "
	puts "********************************************************************************************************"
	time21 = (time20-time19)
	puts "Load Time: Average Scene Time: "+ time21.to_s
	puts "********************************************************************************************************"
	puts " "
	puts " "
		
	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Scene Time']") }
	
	
	
# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Average Scene Time By Hour of Day']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Scene Time By Hour of Day']").click
	time22 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '13:52']") }
	time23 = Time.now.getutc

	puts " "
	puts "********************************************************************************************************"
	time24= (time23-time22)
	puts "Load Time: Average Scene Time By Hour of Day: "+ time24.to_s
	puts "********************************************************************************************************"
	puts " "
	puts " "

	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Scene Time By Hour of Day']") }
	

	
# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Average Scene Time By Unit']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Scene Time By Unit']").click
	time25 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '13:52']") }
	time26 = Time.now.getutc

	puts " "
	puts "********************************************************************************************************"
	time27 = (time26-time25)
	puts "Load Time: Average Scene Time By Unit: "+ time27.to_s
	puts "********************************************************************************************************"
	puts " "
	puts " "

	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Scene Time By Unit']") }

	

# ##################################################################################################


	
    wait_for { displayed?(:xpath, "//div[text() = 'Average Turn Around Time']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Turn Around Time']").click
	time28 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '14:19']") }
	time29 = Time.now.getutc

	puts " "
	puts "********************************************************************************************************"
	time30 = (time29-time28)
	puts "Load Time: Average Turn Around Time: "+ time30.to_s
	puts "********************************************************************************************************"
	puts " "
	puts " "
		
	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Turn Around Time']") }
	
	
	
# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Average Turn Around Time By Hour of Day']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Turn Around Time By Hour of Day']").click
	time31 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '14:19']") }
	time32 = Time.now.getutc

	puts " "
	puts "********************************************************************************************************"
	time33= (time32-time31)
	puts "Load Time: Average Turn Around Time By Hour of Day: "+ time33.to_s
	puts "********************************************************************************************************"
	puts " "
	puts " "

	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Turn Around Time By Hour of Day']") }
	

	
# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Average Turn Around Time By Unit']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Turn Around Time By Unit']").click
	time34 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '14:19']") }
	time35 = Time.now.getutc

	puts " "
	puts "********************************************************************************************************"
	time36 = (time35-time34)
	puts "Load Time: Average Turn Around Time By Unit: "+ time36.to_s
	puts "********************************************************************************************************"
	puts " "
	puts " "

	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Turn Around Time By Unit']") }

	

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
