#!/bin/sh

# Defines helper functions to interact with maven
# Depends on: ./log.sh

# Runs a spring boot app
function .maven-sbr() {
	log "Running the spring boot app"
	mvn clean spring-boot:run
}

# Runs acceptance tests
function .maven-vat() {
	log "Running the acceptance tests"
	mvn clean verify -P acceptance-tests
}

# Shows the dependency tree on sublime
function .maven-dependencies {
	log "Showing the dependency tree on sublime"
	mvn dependency:tree | subl - &
}