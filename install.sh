#!/bin/bash

# this script install the tool in for MacOS
touch ~/.bash_profile

cat <<EOT >> ~/.bash_profile

#
# Bash Custom Functions installed using https://github.com/ricard0javier/bash_customizer
#
CUSTOM_BASH_SCRIPT_DIR="\$HOME/.bash_profile.d"
CUSTOM_BASH_SCRIPT_LOADER="\$CUSTOM_BASH_SCRIPT_DIR/mediator.sh"

if [ -f "\$CUSTOM_BASH_SCRIPT_LOADER" ] ; then
  echo "Executing custom bash script loader"
  source "\$CUSTOM_BASH_SCRIPT_LOADER"
fi

EOT