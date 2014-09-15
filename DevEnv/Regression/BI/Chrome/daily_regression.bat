call performance.bat
call regression.bat

sendEmail -f esoanalyticsqa@gmail.com -t jenna.wakeley@esosolutions.com;richard.hale@esosolutions.com -s smtp.gmail.com:587 -xu esoanalyticsqa@gmail.com -xp .admin77.  -u "Results:  Daily Analytics Performance and Regression Tests" -m "Howdy Partner, attached are the results of the Daily Analytics Smoke Tests.  These tests were executed in the latest version of Google Chrome against the HotFix Environment on DevDb5" -o tls=yes -a "C:\Analytics\AutomatedTesting\DevEnv\Regression\BI\Chrome\performance_log.txt"  "C:\Analytics\AutomatedTesting\DevEnv\Regression\BI\Chrome\regression_log.txt" 
