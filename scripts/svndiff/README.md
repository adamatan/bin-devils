# svndiff

Opens svn diff output in `opendiff` GUI under OSX.

Usage:

    svn diff --diff-cmd svndiff <optional filenames>

Lacking `<optional filenames>`, opendiff will be opened for every changed file that appears in `svn status`.