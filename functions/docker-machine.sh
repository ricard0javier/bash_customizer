#!/bin/sh

# Provides extra functionality to manage the docker machines

# Starts the docker machine that matchs the given name
function docker-start() {

  echo
  printf "${POI_BLUE}Do you want to start the docker machine? ${POI_GREEN}(Y/n/e)${POI_NC}: "

  read answer
  if echo "$answer" | grep -iq "^n" ;then
      return;
  fi
  if echo "$answer" | grep -iq "^e" ;then
      exit;
  fi

  echo
  log "Starting the docker machine ${POI_GREEN}$1${POI_BLUE} and setting variables"

  # start docker machine
  docker-machine start $1

  # set docker properties to allow the docker service to interact with the default machine
  eval "$(docker-machine env $1 --no-proxy)"

  # list the running docker containers
  docker ps

}
