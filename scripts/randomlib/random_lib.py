#!/usr/bin/python

import random
import argparse
import sys
import string

alphanum = string.letters+string.digits
############################### Parse arguments ################################
parser    = argparse.ArgumentParser(description='Easily print random numbers and characters.')
parser.add_argument("-c",   "--count",          help="Repeat count (defaults to 1)", type=int, default=1)
parser.add_argument("-s",   "--string-format",  help='String format fr printout (defaults to "%%n")', type=str, default=None)
group = parser.add_mutually_exclusive_group()
group.add_argument('-i', '--integer',  help="Print a random integer between A and B",
                   nargs=2, type=int,   metavar=("A", "B"))
group.add_argument('-f', '--float',    help="Print a random float between A and B",
                   nargs=2, type=float, metavar=("A", "B"))
group.add_argument('-a', '--alphanum', help="Print a sequence of alphanumeric (%s) characters of a specified length" % alphanum,
                   type=int, metavar=("NUMBER"))

args = parser.parse_args()


for i in range(args.count):
    if args.integer:
        output = random.randint(*args.integer)
    elif args.float:
        output = random.uniform(*args.float)
    elif args.alphanum:
        output = ''.join([random.choice(alphanum) for i in range(args.alphanum)])
    else:
        output = random.uniform(0, 1)
    if args.string_format:
        sys.stdout.write(args.string_format % output)
    else:
        print output
