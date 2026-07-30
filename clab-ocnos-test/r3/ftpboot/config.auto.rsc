# 2026-07-30 14:13:16 by RouterOS 7.23.2
# system id = 8+NGD0K7XGN
#
/interface ethernet
set [ find default-name=ether1 ] disable-running-check=no
set [ find default-name=ether2 ] comment=to-r1 disable-running-check=no
/ip address
/ip dhcp-client
/system identity
set name=r3