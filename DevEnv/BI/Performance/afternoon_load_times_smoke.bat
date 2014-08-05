
load_times  > load_time_log.txt


sendEmail -f esoanalyticsqa@gmail.com -t esoanalyticsqa@gmail@esosolutions.com -bcc jenna.wakeley@esosolutions.com -s smtp.gmail.com:587 -xu esoanalyticsqa@gmail.com -xp .admin77.  -u "Results: (Afternoon) Daily Load Times of Analytics Reports" -m "Hi buddy, attached are the results of the Afternoon Daily Load Times of Analytics Reports.  This is an automated email replies to this inbox are not monitored. " -o tls=yes -a "C:\Smoke\BI\Performance\load_time_log.txt" 
