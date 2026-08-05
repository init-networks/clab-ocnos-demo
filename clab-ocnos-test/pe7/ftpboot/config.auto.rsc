/interface/bridge/add name=BR-VPLS-CUS_B protocol-mode=none
/interface/bridge/port/add bridge=BR-VPLS-CUS_B interface=ether3
/ip address add address=10.0.0.15/31 interface=ether2
/ip address add address=7.7.7.7/32 interface=lo
/mpls interface add interface=all mpls-mtu=1550
/mpls ldp add lsr-id=7.7.7.7 transport-addresses=7.7.7.7
/mpls ldp interface add interface=ether2
/routing ospf instance add name=ospf1 router-id=7.7.7.7
/routing ospf area add instance=ospf1 name=area0
/routing ospf interface-template add area=area0 auth=md5 auth-id=1 auth-key=labocnos interfaces=ether2 type=ptp
/routing ospf interface-template add area=area0 interfaces=lo passive
/routing bgp instance add as=65000 name=bgp65000
/routing bgp connection add afi=l2vpn-cisco as=65000 instance=bgp65000 local.address=7.7.7.7 .role=ibgp name=RR-VPLS remote.address=100.100.100.100
/routing bgp vpls add bridge=BR-VPLS-CUS_B bridge-cost=1 bridge-horizon=1 cisco-id=7.7.7.7&65000:1111 export-route-targets=65000:1111 import-route-targets=65000:1111 name=VPLS-CUS_B pw-control-word=disabled pw-l2mtu=1504 rd=65000:1111