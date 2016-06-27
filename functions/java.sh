#!/bin/sh

# Defines utility functions to changes the JAVA_HOME 
# variable to point to different instaled versions of JAVA

# Sets JAVA_HOME to use java 1.7
function java-7() {

  log "Setting JAVA_HOME to 1.7"
  export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

}

# Sets JAVA_HOME to use java 1.8
function java-8() {

  log "Setting JAVA_HOME to 1.8"
  export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

}
