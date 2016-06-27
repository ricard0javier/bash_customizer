#!/bin/bash

# Set the Custom System Properties
function export-custom-system-properties() {

  log "Setting custom system properties"

  SUBLIME_BIN_PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"
  NPM_BIN_PATH="~/.npm-packages/bin"

  export PATH=$PATH:$SUBLIME_BIN_PATH
  export PATH=$PATH:$NPM_BIN_PATH

}