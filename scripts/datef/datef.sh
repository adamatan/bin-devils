#!/bin/bash

############################## Open source pride! ##################################
# The MIT License (MIT)                                                            #
#                                                                                  #
# Copyright (c) 2013 Adam Matan                                                    #
#                                                                                  #
# Permission is hereby granted, free of charge, to any person obtaining a copy of  #
# this software and associated documentation files (the "Software"), to deal in    #
# the Software without restriction, including without limitation the rights to     #
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of #
# the Software, and to permit persons to whom the Software is furnished to do so,  #
# subject to the following conditions:                                             #
#                                                                                  #
# The above copyright notice and this permission notice shall be included in all   #
# copies or substantial portions of the Software.                                  #
#                                                                                  #
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR       #
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS #
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR   #
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER   #
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN          #
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.       #
####################################################################################

#### Use 'gdate' if it exists (usually on OSX). Fall back to plain old 'date'. #####
`which gdate >/dev/null`
if [ $? -eq 0 ];
then
	DATE_COMMAND='gdate';
else
	DATE_COMMAND='date';
fi

print_and_run_command() {
	COMMAND="$1"
	DESCRIPTION="$2"
	OUTPUT=`eval "$COMMAND"`
	printf "%-45s %-45s %s\n" "$COMMAND" "$OUTPUT" "$DESCRIPTION"
}

printf "Date fomrat elements:\n"
print_and_run_command "$DATE_COMMAND \"+%%\"" 							"a literal %"
print_and_run_command "$DATE_COMMAND \"+%a\"" 							"locale's abbreviated weekday name (e.g., Sun)"
print_and_run_command "$DATE_COMMAND \"+%A\"" 							"locale's full weekday name (e.g., Sunday)"
print_and_run_command "$DATE_COMMAND \"+%b\"" 							"locale's abbreviated month name (e.g., Jan)"
print_and_run_command "$DATE_COMMAND \"+%B\"" 							"locale's full month name (e.g., January)"
print_and_run_command "$DATE_COMMAND \"+%c\"" 							"locale's date and time (e.g., Thu Mar  3 23:05:25 2005)"
print_and_run_command "$DATE_COMMAND \"+%C\"" 							"century; like %Y, except omit last two digits (e.g., 21)"
print_and_run_command "$DATE_COMMAND \"+%d\"" 							"day of month (e.g, 01)"
print_and_run_command "$DATE_COMMAND \"+%D\"" 							"date; same as %m/%d/%y"
print_and_run_command "$DATE_COMMAND \"+%e\"" 							"day of month, space padded; same as %_d"
print_and_run_command "$DATE_COMMAND \"+%F\"" 							"full date; same as %Y-%m-%d"
print_and_run_command "$DATE_COMMAND \"+%g\"" 							"last two digits of year of ISO week number (see %G)"
print_and_run_command "$DATE_COMMAND \"+%G\"" 							"year of ISO week number (see %V); normally useful only with %V"
print_and_run_command "$DATE_COMMAND \"+%h\"" 							"same as %b"
print_and_run_command "$DATE_COMMAND \"+%H\"" 							"hour (00..23)"
print_and_run_command "$DATE_COMMAND \"+%I\"" 							"hour (01..12)"
print_and_run_command "$DATE_COMMAND \"+%j\"" 							"day of year (001..366)"
print_and_run_command "$DATE_COMMAND \"+%k\"" 							"hour ( 0..23)"
print_and_run_command "$DATE_COMMAND \"+%l\"" 							"hour ( 1..12)"
print_and_run_command "$DATE_COMMAND \"+%m\"" 							"month (01..12)"
print_and_run_command "$DATE_COMMAND \"+%M\"" 							"minute (00..59)"
print_and_run_command "$DATE_COMMAND \"+%n\"" 							"a newline"
print_and_run_command "$DATE_COMMAND \"+%N\"" 							"nanoseconds (000000000..999999999)"
print_and_run_command "$DATE_COMMAND \"+%p\"" 							"locale's equivalent of either AM or PM; blank if not known"
print_and_run_command "$DATE_COMMAND \"+%P\"" 							"like %p, but lower case"
print_and_run_command "$DATE_COMMAND \"+%r\"" 							"locale's 12-hour clock time (e.g., 11:11:04 PM)"
print_and_run_command "$DATE_COMMAND \"+%R\"" 							"24-hour hour and minute; same as %H:%M"
print_and_run_command "$DATE_COMMAND \"+%s\"" 							"seconds since 1970-01-01 00:00:00 UTC"
print_and_run_command "$DATE_COMMAND \"+%s.%N\""						"seconds.nanoseconds since 1970-01-01 00:00:00 UTC"
print_and_run_command "$DATE_COMMAND \"+%S\"" 							"second (00..60)"
print_and_run_command "$DATE_COMMAND \"+%t\"" 							"a tab"
print_and_run_command "$DATE_COMMAND \"+%T\"" 							"time; same as %H:%M:%S"
print_and_run_command "$DATE_COMMAND \"+%u\"" 							"day of week (1..7); 1 is Monday"
print_and_run_command "$DATE_COMMAND \"+%U\"" 							"week number of year, with Sunday as first day of week (00..53)"
print_and_run_command "$DATE_COMMAND \"+%V\"" 							"ISO week number, with Monday as first day of week (01..53)"
print_and_run_command "$DATE_COMMAND \"+%w\"" 							"day of week (0..6); 0 is Sunday"
print_and_run_command "$DATE_COMMAND \"+%W\"" 							"week number of year, with Monday as first day of week (00..53)"
print_and_run_command "$DATE_COMMAND \"+%x\"" 							"locale's date representation (e.g., 12/31/99)"
print_and_run_command "$DATE_COMMAND \"+%X\"" 							"locale's time representation (e.g., 23:13:48)"
print_and_run_command "$DATE_COMMAND \"+%y\"" 							"last two digits of year (00..99)"
print_and_run_command "$DATE_COMMAND \"+%Y\"" 							"year"
print_and_run_command "$DATE_COMMAND \"+%z\"" 							"+hhmm numeric timezone (e.g., -0400)"
print_and_run_command "$DATE_COMMAND \"+%:z\"" 							"+hh:mm numeric timezone (e.g., -04:00)"
print_and_run_command "$DATE_COMMAND \"+%::z\"" 						"+hh:mm:ss numeric time zone (e.g., -04:00:00)"
print_and_run_command "$DATE_COMMAND \"+%:::z\"" 						"numeric  time  zone  with:  to necessary precision (e.g., -04, +05:30)"
print_and_run_command "$DATE_COMMAND \"+%Z\"" 							"alphabetic time zone abbreviation (e.g., EDT)"

printf "\nRFC 3339 / ISO 8601, local time zone:\n"
print_and_run_command "$DATE_COMMAND \"+%Y-%m-%dT%H:%M:%S%z\""  			"T-separated"
print_and_run_command "$DATE_COMMAND \"+%Y-%m-%d %H:%M:%S%z\"" 				"Space separated"
print_and_run_command "$DATE_COMMAND \"+%Y-%m-%d %H:%M:%S%z (%Z)\"" 		"Space separated with tz abbreviation"
print_and_run_command "$DATE_COMMAND \"+%Y-%m-%d %H:%M:%S.%N %z (%Z)\"" 	"Space separated with nanoseconds and tz abbreviation"

printf "\nRFC 3339 / ISO 8601, UTC:\n"
print_and_run_command "$DATE_COMMAND -u \"+%Y-%m-%dT%H:%M:%S%z\""  			"T-separated"
print_and_run_command "$DATE_COMMAND -u \"+%Y-%m-%d %H:%M:%S%z\"" 			"Space separated"
print_and_run_command "$DATE_COMMAND -u \"+%Y-%m-%d %H:%M:%S%z (%Z)\"" 		"Space separated with tz abbreviation"
print_and_run_command "$DATE_COMMAND -u \"+%Y-%m-%d %H:%M:%S.%N %z (%Z)\"" 	"Space separated with nanoseconds and tz abbreviation"

printf "\nAndroid picture name style, '.' instead of ':':\n"
print_and_run_command "$DATE_COMMAND    \"+%Y-%m-%d %H.%M.%S\"" 			"Local"
print_and_run_command "$DATE_COMMAND -u \"+%Y-%m-%d %H.%M.%S\"" 			"UTC"

printf "\nMy log line formats, based on RFC 3339 / ISO 8601 in UTC:\n"
print_and_run_command "$DATE_COMMAND -u \"+[%Y-%m-%d %H:%M:%S.%N %z (%Z)]\"" 	"Log format, ISO 8601, [] delimited"

printf "\nOther\n"
print_and_run_command "$DATE_COMMAND \"+%Y-%m-%d %H:%M:%S,%N\" | cut -c -23"	"log4j ISO 8601 format. http://goo.gl/ZQlXs"
echo
