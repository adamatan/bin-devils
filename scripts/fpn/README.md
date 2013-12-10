# fpn

Prints the full path name of one or more files.

## Usage:

    % fpn LICENSE
    /Users/adamatan/bins/scripts/fpn/LICENSE

    % fpn *
    /Users/adamatan/bins/scripts/fpn/LICENSE
    /Users/adamatan/bins/scripts/fpn/README.md
    /Users/adamatan/bins/scripts/fpn/fpn.py

## Man

    usage: fpn [-h] [-f] filename [filename ...]

    Display the full path name of a file.

    positional arguments:
      filename          one or more filenames or directory names.

    optional arguments:
      -h, --help        show this help message and exit
      -f, --files-only  List only files, not directories
