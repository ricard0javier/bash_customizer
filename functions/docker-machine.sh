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

# Removes all the docker containers
function .docker-rm-all() {
  log "Removing all the docker containers"
  docker rm -f $(docker ps -qa)

  printf "${POI_BLUE}Remove volumes? ${POI_GREEN}([y]/n)${POI_NC}: "

  read answer
  if echo "$answer" | grep -iq "^n" ;then
    return;
  fi

  docker system prune -f
  
}

# Shows the status of all the services in the docker compose file
function .docker-ps() {
  log "Showing the status of all the services in the docker compose file"
  docker-compose ps
}

# Runs all the services in the docker compose file
function .docker-up() {
  log "Runnign all the services in the docker compose file in the background"

  printf "${POI_BLUE}Pull? ${POI_GREEN}(y/[n])${POI_NC}: "

  read answer
  if echo "$answer" | grep -iq "^y" ;then
    docker-compose pull
  fi
  
  docker-compose up -d
  .docker-logs
}

# Follows the logs for all the services in the docker compose file
function .docker-logs() {
  log "Following the logs for all the services in the docker compose file"
  docker-compose logs -f --tail 10
}