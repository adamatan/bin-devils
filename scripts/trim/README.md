# trim

Trims (strips) whitespaces from each input line. Credits: [1](http://stackoverflow.com/a/3232433/51197), [1](http://stackoverflow.com/a/3232433/51197).

    % echo "  blah blah blah " | trim
    blah blah blah

    
    % printf " a\n \t b \t \nc  \n"
     a
     	 b
    c

    % printf " a\n \t b \t \nc  \n" | trim
    a
    b
    c

