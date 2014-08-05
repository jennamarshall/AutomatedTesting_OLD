set d=%date:~3,3%%date:~7,2%%date:~10,4%
set d=%d: =_%
set t=%time:~0,2%%time:~3,2%
set t=%t: =0%




echo ...........................................................................................> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo  ****** EXECUTING TEST: Login ******  >> response_smoke_log.txt
login  >> response_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt


echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Navigator ******  >> response_smoke_log.txt
login_to_navigator >> response_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt


echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Operational ******  >> response_smoke_log.txt
login_to_operational >> response_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt


echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Response Time ******  >> response_smoke_log.txt
login_to_response >> response_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt


echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Response Time with Drill Throughs ******  >> response_smoke_log.txt
login_to_response_dt >> response_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt


echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Response Time with Filters ******  >> response_smoke_log.txt
login_to_response_filters >> response_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt


echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Response Time by Hour of Day ******  >> response_smoke_log.txt
login_to_response_hod >> response_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt


echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Response Time by Hour of Day with Drill Throughs ******  >> response_smoke_log.txt
login_to_response_hod_dt >> response_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt

echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Response Time by Hour of Day with Filters ******  >> response_smoke_log.txt
login_to_response_hod_filters >> response_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt


echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Response Time by Unit ******  >> response_smoke_log.txt
login_to_response_bu >> response_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt


echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Response Time by Unit with Drill Throughs ******  >> response_smoke_log.txt
login_to_response_bu_dt >> response_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt


echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo ****** EXECUTING TEST: Login to Average Response Time by Unit with Filters ******  >> response_smoke_log.txt
login_to_response_bu_filters >> response_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt


echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo ****** EXECUTING TEST: Math Check ******  >> response_smoke_log.txt
math >> response_smoke_log.txt
echo ******  TEST COMPLETE %d%:%t%  ****** >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo ...........................................................................................>> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt
echo/ >> response_smoke_log.txt


sendEmail -f esoanalyticsqa@gmail.com  -t qa@esosolutions.com -s smtp.gmail.com:587 -xu esoanalyticsqa@gmail.com  -xp .admin77.  -u "Results: Response Smoke Tests" -m "Hi buddy, attached are the results of the response smoke test" -o tls=yes -a "response_smoke_log.txt"








