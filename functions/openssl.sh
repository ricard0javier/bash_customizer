# prints information about the certificate in the given {host}:{port}
function .openssl-showcert() {

  log "showing information about the certificate in the given {host}:{port}"
  openssl s_client -connect $1 -showcerts

}