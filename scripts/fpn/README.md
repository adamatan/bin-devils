# fpn

Prints the full path name of one or more files.

## Usage:

    % fpn LICENSE
    /Users/adamatan/bins/scripts/fpn/LICENSE

    % fpn *
    /Users/adamatan/bins/scripts/fpn/LICENSE
    /Users/adamatan/bins/scripts/fpn/README.md
    /Users/adamatan/bins/scripts/fpn/fpn.py

`fpn` and `find` can be elegantly combined:

    % find | xargs fpn
    /Users/adamatan/bins/scripts/.
    /Users/adamatan/bins/scripts/./comment
    /Users/adamatan/bins/scripts/./comment/comment.py
    /Users/adamatan/bins/scripts/./comment/LICENSE
    /Users/adamatan/bins/scripts/./comment/README.md
    /Users/adamatan/bins/scripts/./datef
    /Users/adamatan/bins/scripts/./datef/build
    ...
    /Users/adamatan/bins/scripts/./vim_scripts/pvim.sh
    /Users/adamatan/bins/scripts/./vim_scripts/README.md

## Man

    usage: fpn [-h] [-f] [-r] filename [filename ...]

    Display the full path name of a file.

    positional arguments:
      filename          one or more filenames or directory names.

    optional arguments:
      -h, --help        show this help message and exit
      -f, --files-only  List only files, not directories
      -r, --rsync       Show full path (username@hostname:fpn) for rsync-ing from
                        a remote computer