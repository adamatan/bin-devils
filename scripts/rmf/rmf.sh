#!/bin/bash

# Copyright (c) 2012 Adam Matan <adam@matan.name>
# See the file license.txt for copying permission.

# Safe replacement to 'rm -rf'
# Moves the specified path to /tmp/rmf 

# TODO:
#   (Done)      Validate PATH existence
#   (Done)      Add timestamp to DEST
#   Add Undo instruction
#   Add Num Args validation
#   Allow multiple files and wildcards

# Assert args

EXPECTED_NUM_ARGS=1
NUM_ARGS=$#

if [ "$NUM_ARGS" -ne "$EXPECTED_NUM_ARGS" ]
then
  printf "Usage: rmf <path>\n"
  exit 1
fi

PATH="$1"
if [ ! -e ${PATH} ];
then
  echo "${PATH} does not exist."
  exit 1;
fi


SIZE=`/usr/bin/du -sh ${PATH} | /usr/bin/cut -s -f 1`
NUM_FILES=`/usr/bin/find ${PATH} -type f  | /usr/bin/wc -l | /usr/bin/tr -d ' '`
NUM_DIRS=`/usr/bin/find ${PATH} -type d  | /usr/bin/wc -l | /usr/bin/tr -d ' '`
TIMESTAMP=`/bin/date +"%Y_%m_%d__%H_%M_%S"`
DEST="/tmp/rmf/${TIMESTAMP}_${PATH}"

echo "${NUM_FILES} files in ${NUM_DIRS} directories (total ${SIZE})."
/bin/mkdir -p $DEST
/bin/mv $PATH $DEST
echo "Moved to ${DEST}/${PATH}"


