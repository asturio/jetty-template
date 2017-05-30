#!/bin/bash

# Directory containing the Jetty installation
JETTY_HOME=/opt/apps/jetty

# Directory containing the separated from JETTY_HOME
JETTY_BASE=$1


cd $JETTY_BASE || (echo "$JETTY_BASE doesn't exist!" && exit 1)

java -jar $JETTY_HOME/start.jar
