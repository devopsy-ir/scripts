#If you need a proxy to install docker:

#Steps:
apt install tor

#Change file /etc/tor/torrc if you need pass tor traffic via a proxy:
##manual changes 
##HTTPSProxy 10.10.10.5:8080 
##HTTPSProxyAuthenticator <username>:<password> 

#Also if you need use a tor bridge: 
###Bridge 
##UseBridges 1 
##ClientTransportPlugin obfs4 exec /usr/bin/obfs4proxy 
##Bridge obfs4 185.220.101.40:55080 F49B663186705FEFF7B4776D086B8A81D1ED3F4F cert=p9L6+25s8bnfkye1ZxFeAE4mAGY7DH4Gaj7dxngIIzP9BtqrHHwZXdjMK0RVIQ34C7aqZw iat-mode=0
 

apt install apt-transport-tor
apt-get remove docker docker-engine docker.io containerd runc 
apt-get update
apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common 
torify curl -fsSL https://download.docker.com/linux/debian/gpg |  apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository  "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs)  stable" 

#Change file /etc/apt/sources.list:
# Change 
##    deb [arch=amd64] https://download.docker.com/linux/debian buster stable
# into:
##     deb [arch=amd64] tor+https://download.docker.com/linux/debian buster stable

apt-get update
apt-get install docker-ce docker-ce-cli containerd.io
