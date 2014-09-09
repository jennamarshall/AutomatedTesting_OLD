set d=%date:~3,3%%date:~7,2%%date:~10,4%
set d=%d: =_%
set t=%time:~0,2%%time:~3,2%
set t=%t: =0%

echo ...........................................................................................> regression_log.txt
echo/ >> regression_log.txt
echo All of the following regression tests execute the following verifications:  >> regression_log.txt
echo 1.   Initial load of the report>> regression_log.txt
echo 2.   Initial verification of gem calculations>> regression_log.txt
echo 3.   Changing of date range>> regression_log.txt
echo 4.   Verification of gem calculations after date range change>> regression_log.txt
echo 5.   Successfull addition of filters where applicable>> regression_log.txt
echo 6.   Verification of gem calculations after filter addition>> regression_log.txt
echo 7.   Drill through>> regression_log.txt
echo 8.   Viewing of PDF>> regression_log.txt
echo 9.   Opening a QM review>> regression_log.txt
echo 10.  Threshold changes where applicable>> regression_log.txt
echo 11.  Verification of gem calculations after threshold changes>> regression_log.txt
echo 12.  Saving reports>> regression_log.txt
echo 13.  Saved report functionality>> regression_log.txt
echo 14.  Menu navigation>> regression_log.txt
echo 15.  Adding/Removing from Favorites>> regression_log.txt
echo 16.  Deleting saved reports>> regression_log.txt
echo/ >> regression_log.txt

echo ...........................................................................................>> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 1: Login to Navigator ******  >> regression_log.txt
1.login_to_navigator  >> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt

echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 2: Average Chute Time Report - Regression ******  >> regression_log.txt
2.average_chute_time >> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt

echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 3: Average Chute Time By Unit Report - Regression ******  >> regression_log.txt
3.average_chute_time_by_unit >> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt

echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 4: Average Chute Time By Hour of Day Report - Regression ******  >> regression_log.txt
4.average_chute_time_by_hour_of_day>> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt

echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 5: Average Response Time - Regression ******  >> regression_log.txt
5.average_response_time>> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt

echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 6: Average Response Time By Unit Report - Regression ******  >> regression_log.txt
6.average_response_time_by_unit>> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt

echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 7: Average Response Time By Hour of Day Report - Regression ******  >> regression_log.txt
7.average_response_time_by_hour_of_day>> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt

echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 8: Average Scene Time - Regression ******  >> regression_log.txt
8.average_scene_time>> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt

echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 9: Average Scene Time By Unit Report - Regression ******  >> regression_log.txt
9.average_scene_time_by_unit>> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt

echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 10: Average Scene Time By Hour of Day Report - Regression ******  >> regression_log.txt
10.average_scene_time_by_hour_of_day>> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt

echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 11: Average Turn Around Time - Regression ******  >> regression_log.txt
11.average_turn_around_time>> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt


echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 12: Average Turn Around Time By Unit - Regression ******  >> regression_log.txt
12.average_turn_around_time_by_unit>> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt

echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 13: Average Turn Around Time By Hour of Day Report - Regression ******  >> regression_log.txt
13.average_turn_around_time_by_hour_of_day>> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt

echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 14: Transports By Destination Name Report - Regression ******  >> regression_log.txt
14.transports_by_destination_name>> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt

echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 15: Transports By Destination Type Report - Regression ******  >> regression_log.txt
15.transports_by_destination_type>> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt

echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 16: Transports By Destination Name (Bar) Report - Regression ******  >> regression_log.txt
16.transports_by_destination_name_bar>> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt

echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 17: Transports By Destination Type (Bar) Report - Regression ******  >> regression_log.txt
17.transports_by_destination_type_bar>> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt

echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo  ****** EXECUTING TEST 18: Performance Load Times - Regression ******  >> regression_log.txt
18.load_times>> regression_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> regression_log.txt
echo/ >> regression_log.txt
echo ...........................................................................................>> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt
echo/ >> regression_log.txt


sendEmail -f esoanalyticsqa@gmail.com -t jenna.wakeley@esosolutions.com;richard.hale@esosolutions.com -s smtp.gmail.com:587 -xu esoanalyticsqa@gmail.com -xp .admin77.  -u "Results:  Daily Analytics Operational Tests Regression" -m "Howdy Partner, attached are the results of the Daily Analytics Smoke Tests.  These tests were executed in the latest version of Google Chrome against the HotFix Environment on DevDb5" -o tls=yes -a "C:\Analytics\AutomatedTesting\DevEnv\Regression\BI\Chrome\regression_log.txt" 
