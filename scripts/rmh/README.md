# rmh

Removes lines from `~/.ssh/known_hosts`.

Use this script only if you're 100% about the server authenticity.

When a server changes its IP, ssh connection warns about it:

    $ ssh blah.example.com
    Warning: the RSA host key for 'blah.example.com' differs from the key for the IP address '92.133.121.121'
    Offending key for IP in /Users/adamatan/.ssh/known_hosts:138
    Matching host key in /Users/adamatan/.ssh/known_hosts:534
    Are you sure you want to continue connecting (yes/no)? no

Run rmh to remove the old keys:

    $ rmh -v 138 534
    Backing up /home/adamatan/.ssh/known_hosts to /home/adamatan/.ssh/known_hosts.rmh.bak

    Removing lines:
    137:
    92.133.121.121 ssh-rsa ...

    533:
    blah.example.com ssh-rsa ...

Reconnect:

    ssh blah.example.com
    The authenticity of host 'blah.example.com (92.133.121.121)' can't be established.
    RSA key fingerprint is aa:bb:cc:dd:ee:11:22:33:44:55:66:77:88:99:00:11.
    Are you sure you want to continue connecting (yes/no)? yes
    Warning: Permanently added 'blah.example.com,92.133.121.121' (RSA) to the list of known hosts.

## Man

    usage: rmh [-h] [-v] [-d] line_number [line_number ...]

    Removes lines from ~/.ssh/known_hosts.

    positional arguments:
      line_number    Line number(s) to be removed from ~/.ssh/known_hosts

    optional arguments:
      -h, --help     show this help message and exit
      -v, --verbose  Print removed lines and debug data.
      -d, --dry_run  Print removed lines without removing them. Implies --verbose.
