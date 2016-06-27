#!/bin/sh

# Cresates utility functions to log messages in the terminal using fancy colors

# Defines the colors to use
function printf-color-config() {

  # prompt the question
  POI_RED='\033[0;31m'
  POI_BLUE='\033[1;36m'
  POI_GREEN='\033[1;32m'
  POI_NC='\033[0m' # No Color

}

# Prompts a message in blue
function printf-color-blue() {

  printf "${POI_BLUE}$1${POI_NC}\n"

}

# Prompts a message in red
function printf-color-red() {

  printf "${POI_RED}$1${POI_NC}\n"

}

# Prompts a message in green
function printf-color-green() {

  printf "${POI_GREEN}$1${POI_NC}\n"

}