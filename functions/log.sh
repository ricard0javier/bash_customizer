#! /bin/bash

# Creates a utility class to log information on the terminal 
# based on the system variable $LOG.LEVEL which value could be [ INFO | DEBUG ]
# Depends on: ./printf.sh

# Logs a message in INFO level
function log() {
  
  if echo $LOG_LEVEL | grep -iq "^[(DEBUG)|(INFO)]" ;then

    printf-color-blue "$1"

  fi
}

# Logs a message in DEBUG level
function log.debug() {
  
  if echo $LOG_LEVEL | grep -iq "^[(DEBUG)]" ;then
  	
    printf-color-green "$1"

  fi
}
