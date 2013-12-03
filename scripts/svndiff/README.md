# svndiff

OSX GUI diff for svn with the builtin `opendiff`.

Usage:

    svn diff --diff-cmd svndiff <optional filenames>

Without `<optional filenames>`, a new opendiff window will be opened for each changed file in `svn status`. 
