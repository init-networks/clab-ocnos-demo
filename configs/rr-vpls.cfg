/interface bridge add name=loopback
/ip address add address=172.16.0.1/30 interface=ether2
/ip address add address=100.100.100.100/32 interface=loopback
/routing ospf instance set [ find default=yes ] router-id=100.100.100.100
/routing ospf interface add authentication=md5 authentication-key=labocnos authentication-key-id=1 interface=ether2 network-type=point-to-point
/routing ospf network add area=backbone network=100.100.100.100/32
/routing ospf network add area=backbone network=172.16.0.0/30
/mpls interface set [ find default=yes ] mpls-mtu=1550
/mpls ldp set enabled=yes lsr-id=100.100.100.100 transport-address=100.100.100.100
/mpls ldp interface add interface=ether2
/routing bgp instance set default as=65000 router-id=100.100.100.100
/routing bgp peer add address-families=l2vpn-cisco name=R2 remote-address=2.2.2.2 remote-as=65000 route-reflect=yes update-source=loopback
/routing bgp peer add address-families=l2vpn-cisco name=R3 remote-address=3.3.3.3 remote-as=65000 route-reflect=yes update-source=loopback passive=yes
/routing bgp peer add address-families=l2vpn-cisco name=R6 remote-address=6.6.6.6 remote-as=65000 route-reflect=yes update-source=loopback passive=yes
/routing bgp peer add address-families=l2vpn-cisco name=R6 remote-address=7.7.7.7 remote-as=65000 route-reflect=yes update-source=loopback passive=yes
