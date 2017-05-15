#!/bin/sh

# Defines utility functions to submit scala Assigments to Coursera using my email

# submit scala Assigments to Coursera using my email
function coursera-scala-submit() {

  EMAIL="villanueva.ricardo@gmail.com"

  log "submiting scala Assigments to Coursera using my email"
  sbt "submit $EMAIL $1"

}
