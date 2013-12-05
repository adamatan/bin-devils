#!/bin/bash

############################### Assert num args ################################
if [ $# -ne 1 ]
then
  echo "Usage: `pyg $0` filename"
  exit 1
fi

###################### Assert that Pygments is installed #######################
if ! hash pygmentize 2>/dev/null ; then
	echo "ERROR: pygmentize must be installed. Please run 'sudo pip install Pygments'."
	exit 2
fi

FILENAME=$1
HTML_DIR=/tmp/pyg
HTML_FILENAME="`basename $FILENAME`.html"
HTML_PATHNAME=$HTML_DIR/$HTML_FILENAME

########################### Verbosity for debugging ############################
#echo "FILENAME $FILENAME"
#echo "HTML_DIR $HTML_DIR"
#echo "HTML_FILENAME $HTML_FILENAME"
#echo "HTML_PATHNAME $HTML_PATHNAME"

mkdir -p $HTML_DIR 
pygmentize -O full,style=colorful,linenos=1 -o $HTML_PATHNAME $FILENAME && open $HTML_PATHNAME
