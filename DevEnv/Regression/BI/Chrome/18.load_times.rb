require "json"
require "selenium-webdriver"
gem "test-unit"
require "test/unit"

class LoadTimes< Test::Unit::TestCase

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
  

  
  def test_load_times
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

	time100 = Time.now.getutc


	puts "Load Time is measured in seconds"
	puts "Load Time measures time from report name click to last element loads on initial report page"
	puts "Tested for BI Agency on devdb5 environment"
	puts "Tests executed in Google Chrome"

puts " "
puts " "
puts " "
	
# ##################################################################################################


	
    wait_for { displayed?(:xpath, "//div[text() = 'Average Chute Time']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Chute Time']").click
	wait_for { displayed?(:css, "div.label.ng-binding") }
	@driver.find_element(:css, "div.label.ng-binding").click	
	wait_for { displayed?(:xpath, "//div[text() = 'Previous Year']") }
	@driver.find_element(:xpath, "//div[text() = 'Previous Year']").click
	time1 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '00:13']") }
	time2 = Time.now.getutc



	time3 = (time2-time1)
	puts "Load Time: Average Chute Time: "+ time3.to_s



		
	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Chute Time']") }
	
	
	
# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Average Chute Time By Hour of Day']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Chute Time By Hour of Day']").click
	wait_for { displayed?(:css, "div.label.ng-binding") }
	@driver.find_element(:css, "div.label.ng-binding").click	
	wait_for { displayed?(:xpath, "//div[text() = 'Previous Year']") }
	@driver.find_element(:xpath, "//div[text() = 'Previous Year']").click
	time4 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '00:13']") }
	time5 = Time.now.getutc



	time6 = (time5-time4)
	puts "Load Time: Average Chute Time By Hour of Day: "+ time6.to_s




	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Chute Time By Hour of Day']") }
	

	
# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Average Chute Time By Unit']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Chute Time By Unit']").click
	wait_for { displayed?(:css, "div.label.ng-binding") }
	@driver.find_element(:css, "div.label.ng-binding").click	
	wait_for { displayed?(:xpath, "//div[text() = 'Previous Year']") }
	@driver.find_element(:xpath, "//div[text() = 'Previous Year']").click
	time7 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '00:13']") }
	time8 = Time.now.getutc



	time9 = (time8-time7)
	puts "Load Time: Average Chute Time By Unit: "+ time9.to_s




	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Chute Time By Unit']") }

	

# ##################################################################################################


	
    wait_for { displayed?(:xpath, "//div[text() = 'Average Response Time']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Response Time']").click
	wait_for { displayed?(:css, "div.label.ng-binding") }
	@driver.find_element(:css, "div.label.ng-binding").click	
	wait_for { displayed?(:xpath, "//div[text() = 'Previous Year']") }
	@driver.find_element(:xpath, "//div[text() = 'Previous Year']").click
	time10 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '06:18']") }
	time11 = Time.now.getutc



	time12 = (time11-time10)
	puts "Load Time: Average Response Time: "+ time12.to_s



		
	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Response Time']") }
	
	
	
# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Average Response Time By Hour of Day']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Response Time By Hour of Day']").click
	wait_for { displayed?(:css, "div.label.ng-binding") }
	@driver.find_element(:css, "div.label.ng-binding").click	
	wait_for { displayed?(:xpath, "//div[text() = 'Previous Year']") }
	@driver.find_element(:xpath, "//div[text() = 'Previous Year']").click
	time13 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '06:18']") }
	time14 = Time.now.getutc



	time15= (time14-time13)
	puts "Load Time: Average Response Time By Hour of Day: "+ time15.to_s




	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Response Time By Hour of Day']") }
	

	
# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Average Response Time By Unit']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Response Time By Unit']").click
	wait_for { displayed?(:css, "div.label.ng-binding") }
	@driver.find_element(:css, "div.label.ng-binding").click	
	wait_for { displayed?(:xpath, "//div[text() = 'Previous Year']") }
	@driver.find_element(:xpath, "//div[text() = 'Previous Year']").click
	time16 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '06:18']") }
	time17 = Time.now.getutc



	time18 = (time17-time16)
	puts "Load Time: Average Response Time By Unit: "+ time18.to_s




	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Response Time By Unit']") }

	

# ##################################################################################################


	
    wait_for { displayed?(:xpath, "//div[text() = 'Average Scene Time']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Scene Time']").click
	wait_for { displayed?(:css, "div.label.ng-binding") }
	@driver.find_element(:css, "div.label.ng-binding").click	
	wait_for { displayed?(:xpath, "//div[text() = 'Previous Year']") }
	@driver.find_element(:xpath, "//div[text() = 'Previous Year']").click
	time19 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '13:52']") }
	time20 = Time.now.getutc



	time21 = (time20-time19)
	puts "Load Time: Average Scene Time: "+ time21.to_s



		
	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Scene Time']") }
	
	
	
# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Average Scene Time By Hour of Day']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Scene Time By Hour of Day']").click
	wait_for { displayed?(:css, "div.label.ng-binding") }
	@driver.find_element(:css, "div.label.ng-binding").click	
	wait_for { displayed?(:xpath, "//div[text() = 'Previous Year']") }
	@driver.find_element(:xpath, "//div[text() = 'Previous Year']").click
	time22 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '13:52']") }
	time23 = Time.now.getutc



	time24= (time23-time22)
	puts "Load Time: Average Scene Time By Hour of Day: "+ time24.to_s




	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Scene Time By Hour of Day']") }
	

	
# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Average Scene Time By Unit']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Scene Time By Unit']").click
	wait_for { displayed?(:css, "div.label.ng-binding") }
	@driver.find_element(:css, "div.label.ng-binding").click	
	wait_for { displayed?(:xpath, "//div[text() = 'Previous Year']") }
	@driver.find_element(:xpath, "//div[text() = 'Previous Year']").click
	time25 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '13:52']") }
	time26 = Time.now.getutc



	time27 = (time26-time25)
	puts "Load Time: Average Scene Time By Unit: "+ time27.to_s




	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Scene Time By Unit']") }

	

# ##################################################################################################


	
    wait_for { displayed?(:xpath, "//div[text() = 'Average Turn Around Time']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Turn Around Time']").click
	wait_for { displayed?(:css, "div.label.ng-binding") }
	@driver.find_element(:css, "div.label.ng-binding").click	
	wait_for { displayed?(:xpath, "//div[text() = 'Previous Year']") }
	@driver.find_element(:xpath, "//div[text() = 'Previous Year']").click
	time28 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '13:57']") }
	time29 = Time.now.getutc



	time30 = (time29-time28)
	puts "Load Time: Average Turn Around Time: "+ time30.to_s



		
	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Turn Around Time']") }
	
	
	
# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Average Turn Around Time By Hour of Day']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Turn Around Time By Hour of Day']").click
	wait_for { displayed?(:css, "div.label.ng-binding") }
	@driver.find_element(:css, "div.label.ng-binding").click	
	wait_for { displayed?(:xpath, "//div[text() = 'Previous Year']") }
	@driver.find_element(:xpath, "//div[text() = 'Previous Year']").click
	time31 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '13:57']") }
	time32 = Time.now.getutc



	time33= (time32-time31)
	puts "Load Time: Average Turn Around Time By Hour of Day: "+ time33.to_s




	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Turn Around Time By Hour of Day']") }
	

	
# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Average Turn Around Time By Unit']") }
	@driver.find_element(:xpath, "//div[text() = 'Average Turn Around Time By Unit']").click
	wait_for { displayed?(:css, "div.label.ng-binding") }
	@driver.find_element(:css, "div.label.ng-binding").click	
	wait_for { displayed?(:xpath, "//div[text() = 'Previous Year']") }
	@driver.find_element(:xpath, "//div[text() = 'Previous Year']").click
	time34 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '13:57']") }
	time35 = Time.now.getutc



	time36 = (time35-time34)
	puts "Load Time: Average Turn Around Time By Unit: "+ time36.to_s




	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Average Turn Around Time By Unit']") }

	

# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Transports by Destination Name']") }
	@driver.find_element(:xpath, "//div[text() = 'Transports by Destination Name']").click
	wait_for { displayed?(:css, "div.label.ng-binding") }
	@driver.find_element(:css, "div.label.ng-binding").click	
	wait_for { displayed?(:xpath, "//div[text() = 'Previous Year']") }
	@driver.find_element(:xpath, "//div[text() = 'Previous Year']").click
	time37= Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '365']") }
	time38 = Time.now.getutc



	time39 = (time38-time37)
	puts "Load Time: Transports by Destination Name: "+ time39.to_s




	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Transports by Destination Name']") }

	

# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Transports by Destination Type']") }
	@driver.find_element(:xpath, "//div[text() = 'Transports by Destination Type']").click
	wait_for { displayed?(:css, "div.label.ng-binding") }
	@driver.find_element(:css, "div.label.ng-binding").click	
	wait_for { displayed?(:xpath, "//div[text() = 'Previous Year']") }
	@driver.find_element(:xpath, "//div[text() = 'Previous Year']").click
	time40 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '365']") }
	time41 = Time.now.getutc



	time42 = (time41-time40)
	puts "Load Time: Transports by Destination Type: "+ time42.to_s




	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Transports by Destination Type']") }

	

# ##################################################################################################



    wait_for { displayed?(:xpath, "//div[text() = 'Transports by Destination Name (Bar)']") }
	@driver.find_element(:xpath, "//div[text() = 'Transports by Destination Name (Bar)']").click
	wait_for { displayed?(:css, "div.label.ng-binding") }
	@driver.find_element(:css, "div.label.ng-binding").click	
	wait_for { displayed?(:xpath, "//div[text() = 'Previous Year']") }
	@driver.find_element(:xpath, "//div[text() = 'Previous Year']").click
	time43= Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '365']") }
	time44 = Time.now.getutc



	time45 = (time44-time43)
	puts "Load Time: Transports by Destination Name (Bar): "+ time45.to_s




	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Transports by Destination Name (Bar)']") }

# ##################################################################################################

    wait_for { displayed?(:xpath, "//div[text() = 'Transports by Destination Type (Bar)']") }
	@driver.find_element(:xpath, "//div[text() = 'Transports by Destination Type (Bar)']").click
	wait_for { displayed?(:css, "div.label.ng-binding") }
	@driver.find_element(:css, "div.label.ng-binding").click	
	wait_for { displayed?(:xpath, "//div[text() = 'Previous Year']") }
	@driver.find_element(:xpath, "//div[text() = 'Previous Year']").click
	time46 = Time.now.getutc
	wait_for { displayed?(:xpath, "//div[text() = '365']") }
	time47 = Time.now.getutc



	time48 = (time47-time46)
	puts "Load Time: Transports by Destination Type (Bar): "+ time48.to_s




	@driver.navigate() .back();
    wait_for { displayed?(:xpath, "//div[text() = 'Transports by Destination Type (Bar)']") }

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
