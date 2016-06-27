#!/bin/sh

# Provides Maven functionality to support sonar reports 

# Generates the JaCoCo reports
function mvn-coverage-report() {

  java-8

  log "Running the test with the JaCoCo plugin"

   mvn clean \
    org.jacoco:jacoco-maven-plugin:prepare-agent \
    install \
    -Dmaven.test.failure.ignore=true \
    -Dsonar.jacoco.reportMissing.force.zero=true
}

# Generates the JaCoCo repots and loads them on Sonar
function mvn-sonar() {

  mvn-coverage-report & wait $!

  log "Loading data to sonar"

  mvn sonar:sonar

}
