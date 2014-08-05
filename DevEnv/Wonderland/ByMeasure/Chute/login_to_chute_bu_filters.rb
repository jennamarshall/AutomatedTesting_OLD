require "json"
require "selenium-webdriver"
gem "test-unit"
require "test/unit"

class LoginToChuteBuDT< Test::Unit::TestCase

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
  

  
  def test_login_to_chute_bu_dt
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
    sleep (4)
    @driver.find_element(:xpath, "//div[text() = 'ePCR Reports']").click
    sleep (4)
    @driver.find_element(:xpath, "//div[text() = 'Operational Reports']").click
    sleep (4)
	@driver.find_element(:xpath, "//div[text() = 'Average Chute Time By Unit']").click
	sleep (2)
   @driver.find_element(:css, "div.icon").click
	sleep (2)
    @driver.find_element(:css, "div.add-filter-row.ng-scope").click
    sleep (2)
    @driver.find_element(:css, "span.k-input").click	
    sleep (2)
	@driver.find_element(:xpath, "//ul[@id='filters-combo-2-1_listbox']/li[12]").click
	sleep (2)
	@driver.find_element(:xpath, "//div[2]/span/span/span").click
    sleep (2)
    @driver.find_element(:xpath, "//div[7]/div/ul/li[2]").click
    sleep (2)
    @driver.find_element(:xpath, "//div[4]/div/div/input").click
    sleep (2)
    @driver.find_element(:xpath, "//ul[@id='multiselect-combo-2-1_listbox']/li[10]").click
    sleep (2)
	@driver.find_element(:xpath, "//div[4]/div/div/input").click
	sleep (2)
    @driver.find_element(:xpath, "//ul[@id='multiselect-combo-2-1_listbox']/li[11]").click
    sleep (2)
	@driver.find_element(:xpath, "//div[4]/div/div/input").click
	sleep (2)
	@driver.find_element(:xpath, "//ul[@id='multiselect-combo-2-1_listbox']/li[12]").click
	@driver.find_element(:xpath, "//div[4]/div/div/input").click
	sleep (2)
	@driver.find_element(:xpath, "//ul[@id='multiselect-combo-2-1_listbox']/li[13]").click
	@driver.find_element(:xpath, "//div[4]/div/div/input").click
	sleep (2)
	@driver.find_element(:xpath, "//ul[@id='multiselect-combo-2-1_listbox']/li[8]").click	
    @driver.find_element(:css, "button.button-dark").click
    sleep (2)
    @driver.find_element(:xpath, "//div[4]/div/div[2]/div[3]/button[2]").click
  	sleep (2)
    @driver.find_element(:xpath, "//div[@id='content']/div[2]/div/table/tbody/tr/td[9]").click
	sleep (2)
    verify { assert_equal "Disposition", @driver.find_element(:css, "th.header.drill-through-col-7 > div.heading-label > span.col-label").text }
    @driver.find_element(:xpath, "//div[@id='detail-root']/div[3]/div/div").click
    sleep (2)
    @driver.find_element(:xpath, "//div[@id='content']/div[2]/div/table/tbody/tr/td[2]").click
	sleep (2)
    verify { assert_equal "Disposition", @driver.find_element(:css, "th.header.drill-through-col-7 > div.heading-label > span.col-label").text }
    @driver.find_element(:xpath, "//div[@id='detail-root']/div[3]/div/div").click
    sleep (2)
	
	
	
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
