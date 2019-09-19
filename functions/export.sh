#!/bin/bash

# Set the Custom System Properties
function export-custom-system-properties() {

  log "Setting custom system properties"

  NPM_BIN_PATH="~/.npm-packages/bin"

  export ANDROID_HOME=~/Library/Android/sdk

  export PATH=$PATH:$NPM_BIN_PATH
  export PATH="$PATH:`yarn global bin`"

  export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"
}
