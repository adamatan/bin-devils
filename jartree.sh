#!/bin/bash

# Set the JAR name
JAR=$1

# Set the classpath for javap
export CLASSPATH=$JAR
jar tvf $JAR | awk '{print $8}' | grep class$ | sed 's/\.class$//' | xargs javap | grep -v "Compiled from"