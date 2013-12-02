#!/usr/bin/python

from os.path import expanduser
import argparse
from shutil import copyfile

"""
Removes the given lines from the ~/.ssh/known_hosts
"""

############################### Parse arguments ################################
parser = argparse.ArgumentParser(description='Removes lines from ~/.ssh/known_hosts.')

parser.add_argument('line_number', type=int, nargs='+',	help='Line number(s) to be removed from ~/.ssh/known_hosts')
parser.add_argument('-v', '--verbose', help="Print removed lines and debug data.", action='store_true')
parser.add_argument('-d', '--dry_run', help="Print removed lines without removing them. Implies --verbose.", action='store_true')
args = parser.parse_args()

if args.dry_run:
    args.verbose=True

############################## Calculate # width ###############################

if args.dry_run:
    print("###################### Dry run, no files will be changed #######################")

# line numbering in known_hosts are 1-based
line_numbers_to_remove=[i-1 for i in args.line_number]

# Backup known_hosts file
known_host_filename=expanduser("~")+'/.ssh/known_hosts'
backup_known_host_filename=known_host_filename+".rmh.bak"
if args.verbose:
    print("Backing up %s to %s" % (known_host_filename, backup_known_host_filename))
if not args.dry_run:
    copyfile(known_host_filename, backup_known_host_filename)

# Figure out lines to remove
lines=open(known_host_filename).readlines()
remaining_lines=[lines[i] for i in range(len(lines)) if i not in line_numbers_to_remove]

if args.verbose:
    print("\nRemoving lines:")
    for i in line_numbers_to_remove:
        print("%d:\n%s" % (i, lines[i]))

# Write known_hosts without the offending lines
if not args.dry_run:
    file_without_lines=open(known_host_filename, 'w')
    file_without_lines.write(''.join(remaining_lines))
