set d=%date:~3,3%/%date:~7,2%/%date:~10,4%
set d=%d: = %
set t=%time:~0,2%:%time:~3,2%
set t=%t: =0%




echo ...........................................................................................> calculations_smoke_log.txt
echo/ >> calculations_smoke_log.txt
echo  ****** EXECUTING TEST: Chute AVERAGE Math Check ******  >> calculations_smoke_log.txt
chute_math  >> calculations_smoke_log.txt
echo ******  TEST COMPLETE %d% @ %t%  ****** >> calculations_smoke_log.txt
echo/ >> calculations_smoke_log.txt
echo ...........................................................................................>> calculations_smoke_log.txt
echo/ >> calculations_smoke_log.txt
echo/ >> calculations_smoke_log.txt
echo/ >> calculations_smoke_log.txt


echo ...........................................................................................>> calculations_smoke_log.txt
echo/ >> calculations_smoke_log.txt
echo  ****** EXECUTING TEST: Response AVERAGE Math Check ******  >> calculations_smoke_log.txt
response_math >> calculations_smoke_log.txt
echo ******  TEST COMPLETE %d% @ %t%  ****** >> calculations_smoke_log.txt
echo/ >> calculations_smoke_log.txt
echo ...........................................................................................>> calculations_smoke_log.txt
echo/ >> calculations_smoke_log.txt
echo/ >> calculations_smoke_log.txt
echo/ >> calculations_smoke_log.txt


echo ...........................................................................................>> calculations_smoke_log.txt
echo/ >> calculations_smoke_log.txt
echo  ****** EXECUTING TEST: Scene AVERAGE Math Check ******  >> calculations_smoke_log.txt
scene_math >> calculations_smoke_log.txt
echo ******  TEST COMPLETE %d% @ %t%  ****** >> calculations_smoke_log.txt
echo/ >> calculations_smoke_log.txt
echo ...........................................................................................>> calculations_smoke_log.txt
echo/ >> calculations_smoke_log.txt
echo/ >> calculations_smoke_log.txt
echo/ >> calculations_smoke_log.txt














