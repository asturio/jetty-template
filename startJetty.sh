#!/bin/bash

# Directory containing the Jetty installation
JETTY_HOME=/opt/apps/jetty

# Directory containing the separated from JETTY_HOME
JETTY_BASE=$1
JETTY_PORT=8080
JETTY_STOP_PORT=8081
JETTY_STOP_KEY=killMePlease

cd $JETTY_BASE || (echo "$JETTY_BASE doesn't exist!" && exit 1)

# Stop Key must be keeped secret
java -jar $JETTY_HOME/start.jar STOP.PORT=$JETTY_STOP_PORT STOP.KEY=$JETTY_STOP_KEY jetty.http.port=$JETTY_PORT
