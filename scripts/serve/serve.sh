#!/bin/bash

############################### Assert num args ################################
if [[ "$#" -gt "1" ]];
then
  echo "Usage: serve <port>"
  exit 1
elif [[ "$#" -eq "1" ]];
then
	PORT=$1;
else
	PORT=9000;
fi

open "http://localhost:$PORT/"
python -m SimpleHTTPServer $PORT