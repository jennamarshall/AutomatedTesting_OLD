











sendEmail -f esoanalyticsqa@gmail.com -t jenna.wakeley@esosolutions.com -s smtp.gmail.com:587 -xu esoanalyticsqa@gmail.com -xp .admin77.  -u "Results:  Daily Analytics Smoke Tests" -m "Hi buddy, attached are the results of the Daily Analytics Smoke Tests" -o tls=yes -a "C:\Smoke\Wonderland\ByTemplate\navigation\navigation_log.txt" "C:\Smoke\Wonderland\ByTemplate\time\time_log.txt"  "C:\Smoke\Wonderland\ByTemplate\hourofday\hourofday_log.txt" "C:\Smoke\Wonderland\ByTemplate\unit\byunit_log.txt" "C:\Smoke\Wonderland\ByTemplate\gems\calculations_smoke_log.txt"
