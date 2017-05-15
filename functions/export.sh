#!/bin/bash

# Set the Custom System Properties
function export-custom-system-properties() {

  log "Setting custom system properties"
  
  export ANDROID_HOME=~/Library/Android/sdk
  export PATH=${PATH}:${ANDROID_HOME}/tools
  export PATH=${PATH}:${ANDROID_HOME}/platform-tools
  export PATH="$PATH:`yarn global bin`"

}