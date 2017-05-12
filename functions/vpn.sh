# Connects to ooyala vpn
function ooyala-vpn() {
  
  log "Connecting to ooyala VPN"

  sudo openconnect \
  -s 'sudo -E /etc/vpnc/vpnc-script'\
  <SECRET> \
  --servercert <REPLACE> \
  --authgroup <Group> \
  --user <USER>

}