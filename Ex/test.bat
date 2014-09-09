
echo  ****** EXECUTING TEST: Load Times ******  >> load_times_log.txt
load_times >> load_times_log.txt
echo ******  TEST COMPLETE ****** >> load_times_log.txt
echo/ >> load_times_log.txt
echo ...........................................................................................>> load_times_log.txt
echo/ >> load_times_log.txt
echo/ >> load_times_log.txt
echo/ >> load_times_log.txt


sendEmail -f esoanalyticsqa@gmail.com -t jenna.wakeley@esosolutions.com -s smtp.gmail.com:587 -xu esoanalyticsqa@gmail.com -xp .admin77.  -u "Results:  Load Time Tests" -m "Hi buddy, attached are the results of the Daily Load Time Tests" -o tls=yes -a "C:\Smoke\BI\Performance\load_times_log.txt" 
