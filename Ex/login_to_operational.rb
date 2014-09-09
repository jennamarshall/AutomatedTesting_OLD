require "json"
require "selenium-webdriver"
gem "test-unit"
require "test/unit"

import java.io.IOException;
import java.util.Date;
 
public class Timer {
private long startTime = 0;
private long endTime = 0;
private String LOG_FILE;
 
public Timer(String aLOG_FILE) {
LOG_FILE = aLOG_FILE;
}
 
public void start() throws IOException {
this.startTime = System.currentTimeMillis();
logger.Log(LOG_FILE, "TIMER START -> "+this.dateParser(this.startTime));
}
 
public void end() throws IOException {
this.endTime = System.currentTimeMillis();
logger.Log(LOG_FILE, "TIMER END -> "+this.dateParser(this.endTime));
}
 
public Date getStartTime() throws IOException {
logger.Log(LOG_FILE, "GET START -> "+this.dateParser(this.startTime));
return this.dateParser(this.startTime);
}
 
public Date getEndTime() throws IOException {
logger.Log(LOG_FILE, "GET END -> "+this.dateParser(this.endTime));
return this.dateParser(this.endTime);
}
 
public long getTotalTime() throws IOException {
long deltaTime = this.endTime - this.startTime;
logger.Log(LOG_FILE, "GET TOTAL -> "+deltaTime+" ms");
return deltaTime;
}
 
public Date dateParser(long unixTime){
Date date = new Date ();
date.setTime(unixTime);
return date;
}
}

class LoginToOperational< Test::Unit::TestCase

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
  
  

  def test_login_to_operational
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