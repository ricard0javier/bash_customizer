#!/bin/sh

# Defines helper function to interact with my raspberry pi
# Depends on: ./log.sh

# Connects through SSH to the raspberry pi and link its port 80 to this machine port 9000
function ssh-pi() {
  
  log "Connecting to dev.1989generationinitiative.org linking port 80 to this:9000"
  
  ssh -NC pi@dev.1989generationinitiative.org -L 9000:localhost:80

}
