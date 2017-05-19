#!/bin/bash

# Set the Custom System Properties
function export-custom-system-properties() {

  log "Setting custom system properties"

  SUBLIME_BIN_PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"
  NPM_BIN_PATH="~/.npm-packages/bin"
  OPENSSL_PATH="/usr/local/opt/openssl/bin"

  export PATH=$PATH:$SUBLIME_BIN_PATH
  export PATH=$PATH:$NPM_BIN_PATH
  export PATH=$PATH:$OPENSSL_PATH

  export FLEX_IP=$(ifconfig en0 | awk '/inet /{print $2}')
  echo "FLEX_IP = '$FLEX_IP'"

  export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"
}
