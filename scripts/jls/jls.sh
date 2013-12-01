#!/bin/bash

# Print the classes and methods in a jar file.
# Credit: http://stackoverflow.com/questions/3248335/how-to-view-the-method-members-of-a-class-within-a-jar-file-thru-the-command-lin

# Set the JAR name
JAR=$1

# Set the classpath for javap
export CLASSPATH=$JAR
jar tvf $JAR | awk '{print $8}' | grep class$ | sed 's/\.class$//' | xargs javap | grep -v "Compiled from"
