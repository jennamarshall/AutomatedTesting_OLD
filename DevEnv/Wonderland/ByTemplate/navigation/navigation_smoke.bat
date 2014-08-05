set d=%date:~3,3%/%date:~7,2%/%date:~10,4%
set d=%d: = %
set t=%time:~0,2%:%time:~3,2%
set t=%t: =0%




echo ...........................................................................................> navigation_log.txt
echo/ >> navigation_log.txt
echo  ****** EXECUTING TEST: Login ******  >> navigation_log.txt
login  >> navigation_log.txt
echo ******  TEST COMPLETE %d% @ %t%  ****** >> navigation_log.txt
echo/ >> navigation_log.txt
echo ...........................................................................................>> navigation_log.txt
echo/ >> navigation_log.txt
echo/ >> navigation_log.txt
echo/ >> navigation_log.txt


echo ...........................................................................................>> navigation_log.txt
echo/ >> navigation_log.txt
echo  ****** EXECUTING TEST: Login to Navigator ******  >> navigation_log.txt
login_to_navigator >> navigation_log.txt
echo ******  TEST COMPLETE %d% @ %t%  ****** >> navigation_log.txt
echo/ >> navigation_log.txt
echo ...........................................................................................>> navigation_log.txt
echo/ >> navigation_log.txt
echo/ >> navigation_log.txt
echo/ >> navigation_log.txt


echo ...........................................................................................>> navigation_log.txt
echo/ >> navigation_log.txt
echo  ****** EXECUTING TEST: Login to Operational ******  >> navigation_log.txt
login_to_operational >> navigation_log.txt
echo ******  TEST COMPLETE %d% @ %t%  ****** >> navigation_log.txt
echo/ >> navigation_log.txt
echo ...........................................................................................>> navigation_log.txt
echo/ >> navigation_log.txt
echo/ >> navigation_log.txt
echo/ >> navigation_log.txt












