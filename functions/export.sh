#!/bin/bash

# Set the Custom System Properties
function export-custom-system-properties() {

  log "Setting custom system properties"

  NPM_BIN_PATH="~/.npm-packages/bin"
  OPENSSL_PATH="/usr/local/opt/openssl/bin"

  export ANDROID_HOME=~/Library/Android/sdk

  export PATH=$PATH:$NPM_BIN_PATH
  export PATH=$PATH:$OPENSSL_PATH
  export PATH="$PATH:`yarn global bin`"
  export PATH=${PATH}:${ANDROID_HOME}/tools
  export PATH=${PATH}:${ANDROID_HOME}/platform-tools

  export FLEX_IP=$(ifconfig en0 | awk '/inet /{print $2}')
  echo "FLEX_IP = '$FLEX_IP'"

  export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"
}
