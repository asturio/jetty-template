#!/bin/bash

# Directory containing the Jetty installation
JETTY_HOME=/opt/apps/jetty

# Directory containing the separated from JETTY_HOME
JETTY_BASE=$1
JETTY_PORT=8080
JETTY_SSL_PORT=8443


cd $JETTY_BASE || (echo "$JETTY_BASE doesn't exist!" && exit 1)

java -jar $JETTY_HOME/start.jar jetty.http.port=$JETTY_PORT jetty.ssl.port=$JETTY_SSL_PORT
