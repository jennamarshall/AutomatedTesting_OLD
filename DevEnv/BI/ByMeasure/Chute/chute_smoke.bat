set d=%date:~3,3%%date:~7,2%%date:~10,4%
set d=%d: =_%
set t=%time:~0,2%%time:~3,2%
set t=%t: =0%




echo ...........................................................................................> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo  ****** EXECUTING TEST: Login ******  >> chute_smoke_log.txt
login  >> chute_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt


echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Navigator ******  >> chute_smoke_log.txt
login_to_navigator >> chute_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt


echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Operational ******  >> chute_smoke_log.txt
login_to_operational >> chute_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt


echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Chute Time ******  >> chute_smoke_log.txt
login_to_chute >> chute_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt


echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Chute Time with Drill Throughs ******  >> chute_smoke_log.txt
login_to_chute_dt >> chute_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt


echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Chute Time with Filters ******  >> chute_smoke_log.txt
login_to_chute_filters >> chute_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt


echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Chute Time by Hour of Day ******  >> chute_smoke_log.txt
login_to_chute_hod >> chute_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt


echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Chute Time by Hour of Day with Drill Throughs ******  >> chute_smoke_log.txt
login_to_chute_hod_dt >> chute_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt


echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Chute Time by Hour of Day with Filters ******  >> chute_smoke_log.txt
login_to_chute_hod_filters >> chute_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt


echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Chute Time by Unit ******  >> chute_smoke_log.txt
login_to_chute_bu >> chute_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt


echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Chute Time by Unit with Drill Throughs ******  >> chute_smoke_log.txt
login_to_chute_bu_dt >> chute_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt


echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo ****** EXECUTING TEST: Login to Average Chute Time by Unit with Filters ******  >> chute_smoke_log.txt
login_to_chute_bu_filters >> chute_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt


echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo ****** EXECUTING TEST: Math Check ******  >> chute_smoke_log.txt
math >> chute_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo ...........................................................................................>> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt
echo/ >> chute_smoke_log.txt


sendEmail -f esoanalyticsqa@gmail.com  -t qa@esosolutions.com -s smtp.gmail.com:587 -xu esoanalyticsqa@gmail.com  -xp .admin77.  -u "Results:  Chute Smoke Tests" -m "Hi buddy, attached are the results of the chute smoke test" -o tls=yes -a "chute_smoke_log.txt"









