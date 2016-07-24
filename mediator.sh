#!/bin/bash

# execute all the customizer scripts
CUSTOM_BASH_SCRIPTS_DIR="$CUSTOM_BASH_SCRIPT_DIR/functions"
export LOG_LEVEL=INFO

if [ -d "$CUSTOM_BASH_SCRIPTS_DIR" ]; then

  for script in $CUSTOM_BASH_SCRIPTS_DIR/*; do
    source $script;
  done

fi

printf-color-config
export-custom-system-properties
java-8
bash-colors
alias-sublime

