# scripts
If you need a proxy to install docker:

Steps:
1. apt install tor
2. Change file /etc/tor/torrc if you need pass tor traffic via a proxy:
##manual changes 
HTTPSProxy 10.10.10.5:8080 
 
HTTPSProxyAuthenticator <username>:<password> 

Also if you need use a tor bridge: <br/>
##Bridge <br/>
#UseBridges 1 <br/>
#ClientTransportPlugin obfs4 exec /usr/bin/obfs4proxy <br/>
#Bridge obfs4 185.220.101.40:55080 F49B663186705FEFF7B4776D086B8A81D1ED3F4F cert=p9L6+25s8bnfkye1ZxFeAE4mAGY7DH4Gaj7dxngIIzP9BtqrHHwZXdjMK0RVIQ34C7aqZw iat-mode=0 
 <br/>
 <br/>

3. apt install apt-transport-tor
4. apt-get remove docker docker-engine docker.io containerd runc 
5. apt-get update
6. apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common 
7. torify curl -fsSL https://download.docker.com/linux/debian/gpg |  apt-key add -
8. apt-key fingerprint 0EBFCD88
9. add-apt-repository  "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs)  stable" 
10. Change file /etc/apt/sources.list: <br/>
 Change  <br/>
    deb [arch=amd64] https://download.docker.com/linux/debian buster stable <br/>
 into: <br/>
     deb [arch=amd64] tor+https://download.docker.com/linux/debian buster stable
 <br/><br/>

11. $ sudo apt-get update
12. apt-get install docker-ce docker-ce-cli containerd.io
 
