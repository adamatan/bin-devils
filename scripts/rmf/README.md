rmf
===

Safe replacement for `rm -rf`. Copies the selected path to `/tmp/rmf/TIMESTAMP/`, thus giving the user recover ability until the system is rebooted.

Usage
-----

    rmf <path>

Example
-------

    # rmf blah
    3 files in 2 directories (total  12K).
    Moved to /tmp/rmf/2012_10_15__16_28_28/blah

TODO
----

 * Write messages to stderr
 * Support multiple files: `rmf <path1> [path2 path3 ....]`
 * Support wildcards (`*`, `?`)
 * Check for sufficient space in `/tmp` before moving

