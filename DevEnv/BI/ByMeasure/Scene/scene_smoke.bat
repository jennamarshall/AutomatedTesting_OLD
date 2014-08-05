set d=%date:~3,3%%date:~7,2%%date:~10,4%
set d=%d: =_%
set t=%time:~0,2%%time:~3,2%
set t=%t: =0%




echo ...........................................................................................> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo  ****** EXECUTING TEST: Login ******  >> scene_smoke_log.txt
login  >> scene_smoke_log.txt
echo ******  TEST COMPLETE: %d%:%t%  ****** >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt


echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Navigator ******  >> scene_smoke_log.txt
login_to_navigator >> scene_smoke_log.txt
echo ******  TEST COMPLETE: %d%:%t%  ****** >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt


echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Operational ******  >> scene_smoke_log.txt
login_to_operational >> scene_smoke_log.txt
echo ******  TEST COMPLETE: %d%:%t%  ****** >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt


echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Scene Time ******  >> scene_smoke_log.txt
login_to_scene >> scene_smoke_log.txt
echo ******  TEST COMPLETE: %d%:%t%  ****** >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt


echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Scene Time with Drill Throughs ******  >> scene_smoke_log.txt
login_to_scene_dt >> scene_smoke_log.txt
echo ******  TEST COMPLETE: %d%:%t%  ****** >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt


echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Scene Time with Filters ******  >> scene_smoke_log.txt
login_to_scene_filters >> scene_smoke_log.txt
echo ******  TEST COMPLETE: %d%:%t%  ****** >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt


echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Scene Time by Hour of Day ******  >> scene_smoke_log.txt
login_to_scene_hod >> scene_smoke_log.txt
echo ******  TEST COMPLETE: %d%:%t%  ****** >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt


echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Scene Time by Hour of Day with Drill Throughs ******  >> scene_smoke_log.txt
login_to_scene_hod_dt >> scene_smoke_log.txt
echo ******  TEST COMPLETE: %d%:%t%  ****** >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt


echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Scene Time by Hour of Day with Filters ******  >> scene_smoke_log.txt
login_to_scene_hod_filters >> scene_smoke_log.txt
echo ******  TEST COMPLETE: %d%:%t%  ****** >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt


echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Scene Time by Unit ******  >> scene_smoke_log.txt
login_to_scene_bu >> scene_smoke_log.txt
echo ******  TEST COMPLETE: %d%:%t%  ****** >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt


echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo  ****** EXECUTING TEST: Login to Average Scene Time by Unit with Drill Throughs ******  >> scene_smoke_log.txt
login_to_scene_bu_dt >> scene_smoke_log.txt
echo ******  TEST COMPLETE: %d%:%t%  ****** >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt


echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo ****** EXECUTING TEST: Login to Average Scene Time by Unit with Filters ******  >> scene_smoke_log.txt
login_to_scene_bu_filters >> scene_smoke_log.txt
echo ******  TEST COMPLETE: %d%:%t%  ****** >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt


echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo ****** EXECUTING TEST: Math Check ******  >> scene_smoke_log.txt
math >> scene_smoke_log.txt
echo ******  TEST COMPLETE: %d%:%t%  ****** >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo ...........................................................................................>> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt
echo/ >> scene_smoke_log.txt


sendEmail -f esoanalyticsqa@gmail.com  -t qa@esosolutions.com -s smtp.gmail.com:587 -xu esoanalyticsqa@gmail.com  -xp .admin77. -u "Results: Scene Smoke Tests" -m "Hi buddy, attached are the results of the scene smoke test" -o tls=yes -a "scene_smoke_log.txt"







