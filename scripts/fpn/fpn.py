#!/usr/bin/python

import os
import argparse
import getpass
import socket

"""Prints the full path name of one or more files."""

############################### Parse arguments ################################
parser    = argparse.ArgumentParser(description='Display the full path name of a file.')

parser.add_argument('filename', type=str, nargs='+',
					help='one or more filenames or directory names.')
parser.add_argument('-f', '--files-only', help="List only files, not directories", default=False, action='store_true')
parser.add_argument('-r', '--rsync', help="""Prefix "whoami@hostname:" to the full path for rsync-ing from a remote computer.""", default=False, action='store_true')

args = parser.parse_args()

rsync_prefix = "%s@%s:" % (getpass.getuser(), socket.gethostname()) if args.rsync else ""


for f in args.filename:
    f=f.decode('utf8')
    if f.startswith(os.sep):    # Starts with "/", considered a full path name
        full_path = f
    else:                       # Prepend with current working directory
        full_path = os.getcwdu()+os.sep+f

    # Print if it's a file, or it's a directory and "--all" is True
    if (os.path.isfile(full_path)) or (os.path.isdir(full_path) and not args.files_only):
        print(rsync_prefix+full_path)


