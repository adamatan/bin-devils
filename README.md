Looking for the [setup guide](#setup)?

# Scripts

### [comment](https://github.com/adamatan/bin/tree/master/scripts/comment)

Prints a fixed-width padded comment.

    $ comment "Fixed width comment"
    ############################# Fixed width comment ##############################
        
    $ comment --xml "Fixed width comment"
    <!--                          Fixed width comment                            -->
    
    comment --java "Wider comment" 100
    /***************************************** Wider comment ******************************************/

### [datef](https://github.com/adamatan/bin/tree/master/scripts/datef)

Prints various date formats.

    $ datef
    ...
    RFC 3339 / ISO 8601, UTC:
    date -u "+%Y-%m-%dT%H:%M:%S%z"           2013-08-09T23:02:18+0000                   T-separated
    date -u "+%Y-%m-%d %H:%M:%S%z"           2013-08-09 23:02:18+0000                   Space separated
    date -u "+%Y-%m-%d %H:%M:%S%z (%Z)"      2013-08-09 23:02:18+0000 (UTC)             Space separated with tz     abbreviation
    date -u "+%Y-%m-%d %H:%M:%S.%N %z (%Z)"  2013-08-09 23:02:18.315541000 +0000 (UTC)  Space separated with nanoseconds and tz abbreviation
    ...

### [jls](https://github.com/adamatan/bin/tree/master/scripts/jls)

Lists classes and methods in a Java jar.

    $ jls log4j-1.2.16.jar
   
    public interface org.apache.log4j.Appender {
      public abstract void addFilter(org.apache.log4j.spi.Filter);
      public abstract org.apache.log4j.spi.Filter getFilter();
    ...

### [rmf](https://github.com/adamatan/bin/tree/master/scripts/rmf)

`rm -rf` replacement. Copies files to `/tmp/rmf`.

    $ rmf blah
    3 files in 2 directories (total  12K).
    Moved to /tmp/rmf/2012_10_15__16_28_28/blah

### [rmh](https://github.com/adamatan/bin/tree/master/scripts/rmh)

Removes lines from `~/.ssh/known_hosts`.

    $ rmh -v 138 534
    Backing up /home/adamatan/.ssh/known_hosts to /home/adamatan/.ssh/known_hosts.rmh.bak

    Removing lines:
    137:
    92.133.121.121 ssh-rsa ...

    533:
    blah.example.com ssh-rsa ...

### [pyg](https://github.com/adamatan/bin/tree/master/scripts/pyg)

Opens a source file in a browser, with syntax highlighting.

    $ pyg somefile.py

### [svndiff](https://github.com/adamatan/bin/tree/master/scripts/svndiff)

OSX GUI svn diff.

    svn diff --diff-cmd svndiff <optional filenames>

### [vim scripts](https://github.com/adamatan/bin/tree/master/scripts/vim_scripts)

Creates an executable file with the right shebang for bash or Python.

    $ pvim blah.py
    <vim opens, you can edit the file and exit>

    $ cat blah.py
    #!/usr/bin/python

# setup

Clone the repo, probably to `~/bin`:

    git clone git@github.com:adamatan/bin.git ~/bin

Add the full bin path to your `.bashrc` or `.zshrc`:

Linux:

    export PATH=$PATH:/home/your_user_name/bin

OSX:

    exportPATH=$PATH:/Users/your_user_name/bin
