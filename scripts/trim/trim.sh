#!/bin/bash

# Credits: http://superuser.com/a/637913/2568, http://stackoverflow.com/a/3232433/51197

sed -E -e 's/^[[:space:]]*//g' -e "s/[[:space:]]*$//g"