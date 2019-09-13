#!/bin/sh

# Sets a serie of variables and alias in order to provide a coloured experience using the terminal
# Depends on: ./log.sh

HISTFILESIZE=1000000
HISTSIZE=1000000
HISTTIMEFORMAT='%F %T '
PROMPT_COMMAND='history -a'

# improves the terminal colors
function bash-colors() {
  
  log "Setting Bash colors"

  # define a colored prompt 
  export PS1='\[\e[0;33m\]\W\[\e[0m\]\$ '
  
  # using a colourized terminal
  export TERM="xterm-color"

  # setting the colors for the command 'ls'
  export CLICOLOR=1
  export LSCOLORS=GxFxCxDxBxegedabagaced

  log.debug "Setting some aliases"
  alias ls='ls -GFh'
  alias ll='ls -alh'

}

#create alias for sublime in oreder to have the command "subl" available in the command line
function alias-sublime() {
  log "Setting Bash bin for Sublime-Text"
  if [ ! -L /usr/local/bin/subl ]; then
    ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
  fi
}

# Reloads the bash functions
function .bash-reload() {
  log "Reloading the bash functions"
  . ~/.bash_profile
}

# Opens the bash profiles functions with sublime 
function .bash-edit() {
  log "Opening the bash profiles functions with sublime "
  subl ~/.bash_profile.d
}

# Opens the hosts files with sublime 
function .bash-hosts() {
  log "Opening the hosts files with sublime "
  subl /etc/hosts
}
