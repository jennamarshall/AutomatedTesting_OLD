
load_times  > load_time_log.txt


sendEmail -f esoanalyticsqa@gmail.com -t esoanalyticsqa@gmail.com -bcc jenna.wakeley@esosolutions.com -s smtp.gmail.com:587 -xu esoanalyticsqa@gmail.com -xp .admin77.  -u "Results: Daily Load Times of Analytics Reports" -m "Hi buddy, attached are the results of the Daily Load Times of Analytics Reports.  This is an automated email, replies to this inbox are not monitored. For futher information please contact Jenna.Wakeley@esosolutions.com" -o tls=yes -a "C:\Analytics\AutomatedTesting\DevEnv\BI\Performance\load_time_log.txt" 
