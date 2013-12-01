Date formatting examples
========================

![http://xkcd.com/1179/](http://imgs.xkcd.com/comics/iso_8601.png "XKCD 1179")

Shows the man page for `date` using live examples.

Instead of:

    %Y     year

It shows the more helpful:

    %Y         2013                      year

Full execution example:

	Date fomrat elements:
	date "+%%"                                   %                                             a literal %
	date "+%a"                                   Sat                                           locale's abbreviated weekday name (e.g., Sun)
	date "+%A"                                   Saturday                                      locale's full weekday name (e.g., Sunday)
	date "+%b"                                   Aug                                           locale's abbreviated month name (e.g., Jan)
	date "+%B"                                   August                                        locale's full month name (e.g., January)
	date "+%c"                                   Sat Aug 10 02:02:18 2013                      locale's date and time (e.g., Thu Mar  3 23:05:25 2005)
	date "+%C"                                   20                                            century; like %Y, except omit last two digits (e.g., 21)
	date "+%d"                                   10                                            day of month (e.g, 01)
	date "+%D"                                   08/10/13                                      date; same as %m/%d/%y
	date "+%e"                                   10                                            day of month, space padded; same as %_d
	date "+%F"                                   2013-08-10                                    full date; same as %Y-%m-%d
	date "+%g"                                   13                                            last two digits of year of ISO week number (see %G)
	date "+%G"                                   2013                                          year of ISO week number (see %V); normally useful only with %V
	date "+%h"                                   Aug                                           same as %b
	date "+%H"                                   02                                            hour (00..23)
	date "+%I"                                   02                                            hour (01..12)
	date "+%j"                                   222                                           day of year (001..366)
	date "+%k"                                    2                                            hour ( 0..23)
	date "+%l"                                    2                                            hour ( 1..12)
	date "+%m"                                   08                                            month (01..12)
	date "+%M"                                   02                                            minute (00..59)
	date "+%n"                                                                                 a newline
	date "+%N"                                   232916000                                     nanoseconds (000000000..999999999)
	date "+%p"                                   AM                                            locale's equivalent of either AM or PM; blank if not known
	date "+%P"                                   am                                            like %p, but lower case
	date "+%r"                                   02:02:18 AM                                   locale's 12-hour clock time (e.g., 11:11:04 PM)
	date "+%R"                                   02:02                                         24-hour hour and minute; same as %H:%M
	date "+%s"                                   1376089338                                    seconds since 1970-01-01 00:00:00 UTC
	date "+%s.%N"                                1376089338.251626000                          seconds.nanoseconds since 1970-01-01 00:00:00 UTC
	date "+%S"                                   18                                            second (00..60)
	date "+%t"                                   	                                             a tab
	date "+%T"                                   02:02:18                                      time; same as %H:%M:%S
	date "+%u"                                   6                                             day of week (1..7); 1 is Monday
	date "+%U"                                   31                                            week number of year, with Sunday as first day of week (00..53)
	date "+%V"                                   32                                            ISO week number, with Monday as first day of week (01..53)
	date "+%w"                                   6                                             day of week (0..6); 0 is Sunday
	date "+%W"                                   31                                            week number of year, with Monday as first day of week (00..53)
	date "+%x"                                   08/10/2013                                    locale's date representation (e.g., 12/31/99)
	date "+%X"                                   02:02:18                                      locale's time representation (e.g., 23:13:48)
	date "+%y"                                   13                                            last two digits of year (00..99)
	date "+%Y"                                   2013                                          year
	date "+%z"                                   +0300                                         +hhmm numeric timezone (e.g., -0400)
	date "+%:z"                                  +03:00                                        +hh:mm numeric timezone (e.g., -04:00)
	date "+%::z"                                 +03:00:00                                     +hh:mm:ss numeric time zone (e.g., -04:00:00)
	date "+%:::z"                                +03                                           numeric  time  zone  with:  to necessary precision (e.g., -04, +05:30)
	date "+%Z"                                   IDT                                           alphabetic time zone abbreviation (e.g., EDT)
	
	RFC 3339 / ISO 8601, local time zone:
	date "+%Y-%m-%dT%H:%M:%S%z"                  2013-08-10T02:02:18+0300                      T-separated
	date "+%Y-%m-%d %H:%M:%S%z"                  2013-08-10 02:02:18+0300                      Space separated
	date "+%Y-%m-%d %H:%M:%S%z (%Z)"             2013-08-10 02:02:18+0300 (IDT)                Space separated with tz abbreviation
	date "+%Y-%m-%d %H:%M:%S.%N %z (%Z)"         2013-08-10 02:02:18.305766000 +0300 (IDT)     Space separated with nanoseconds and tz abbreviation
	
	RFC 3339 / ISO 8601, UTC:
	date -u "+%Y-%m-%dT%H:%M:%S%z"               2013-08-09T23:02:18+0000                      T-separated
	date -u "+%Y-%m-%d %H:%M:%S%z"               2013-08-09 23:02:18+0000                      Space separated
	date -u "+%Y-%m-%d %H:%M:%S%z (%Z)"          2013-08-09 23:02:18+0000 (UTC)                Space separated with tz abbreviation
	date -u "+%Y-%m-%d %H:%M:%S.%N %z (%Z)"      2013-08-09 23:02:18.315541000 +0000 (UTC)     Space separated with nanoseconds and tz abbreviation
	
	Android picture name style, '.' instead of ':':
	date    "+%Y-%m-%d %H.%M.%S"                 2013-08-10 02.02.18                           Local
	date -u "+%Y-%m-%d %H.%M.%S"                 2013-08-09 23.02.18                           UTC
	
	My log line formats, based on RFC 3339 / ISO 8601 in UTC:
	date -u "+[%Y-%m-%d %H:%M:%S.%N %z (%Z)]"    [2013-08-09 23:02:18.323764000 +0000 (UTC)]   Log format, ISO 8601, [] delimited
	
