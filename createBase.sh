#!/bin/bash
JETTY_HOME=/opt/apps/jetty

JETTY_BASE=$1

[ -d $JETTY_BASE ] || mkdir $JETTY_BASE
cd $JETTY_BASE
java -jar $JETTY_HOME/start.jar --create-startd
java -jar $JETTY_HOME/start.jar --add-to-start=http,deploy

