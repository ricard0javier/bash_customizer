#!/bin/sh

# Defines utility functions to changes the JAVA_HOME 
# variable to point to different instaled versions of JAVA

# Sets JAVA_HOME to use java 1.8
function java-12() {

  log "Setting JAVA_HOME to 12"
  export JAVA_HOME=$(/usr/libexec/java_home -v 12)

}
