#!/usr/bin/python

import sys
import argparse

############################### Parse arguments ################################
parser    = argparse.ArgumentParser(description='Generates fixed-width comments.')

parser.add_argument('-d', '--debug', help="Debug mode", action='store_true')
languages = parser.add_mutually_exclusive_group()
languages.add_argument('-j', '--java', help="/* Use Java notation  */", action='store_true')
languages.add_argument('-x', '--xml',  help="<!-- Use XML notation -->", action='store_true') 

parser.add_argument('message', type=str, nargs='?',
					default='Use -h for help!', 
					help='Message to be displayed (e.g, "fuggedaboudit")')
parser.add_argument('width', type=int, default=80, nargs='?',
                   help='Total line width (hashes + message)')
args = parser.parse_args()

if args.debug:
	print args

############################# Exit on width error ##############################
if len(args.message)>args.width:
	sys.stderr.write('Warning: "%s": length is %d, wider than %d\n' % (args.message, 
												len(args.message), args.width))

############################## Calculate # width ###############################
filler_width = (args.width-len(args.message)-2)/2

if args.java:
	filler		= "*"*(filler_width-1)
	filler_start	= '/'+filler
	filler_end	= filler+'/'

elif args.xml:
	filler = " "*(filler_width-3)
	filler_start = "<!--"+filler[:-1]
	filler_end   = filler+"-->"

else:
	filler_start=filler_end= "#"*max(1, filler_width)

if len(args.message)%2==1:
	filler_end = filler_end[0]+filler_end

################################# Print result #################################
print filler_start+" %s "%args.message+filler_end
