#!/bin/sh

# Sets a serie of variables and alias in order to provide a coloured experience using the terminal
# Depends on: ./log.sh

# improves the terminal colors
function bash-colors() {
  
  log "Setting Bash colors"

  # define a colored prompt 
  export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;36m\]\w\[\e[0m\]\$ '

  # using a colourized terminal
  export TERM="xterm-color"

  # setting the colors for the command 'ls'
  export CLICOLOR=1
  export LSCOLORS=GxFxCxDxBxegedabagaced

  log.debug "Setting some aliases"
  alias ls='ls -GFh'
  alias ll='ls -alh'

}

