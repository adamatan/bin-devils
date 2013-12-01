# vim scripts

Create a Python or Bash file with [shebang](https://en.wikipedia.org/wiki/Shebang_(Unix)) and execution rights.

    $ pvim blah.py
    <vim opens>
    
    $ ls -la blah.py
    -rwxr-xr-x  1 adamatan  wheel  19 Dec  1 16:15 blah.py
    
    $ cat blah.py
    #!/usr/bin/python
    
`bvim` does the same with the bash shebang - `#!/bin/bash`.
