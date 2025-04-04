First of all - useful links:

- [freedesktop.org - systemd-networkd — Network manager](https://www.freedesktop.org/software/systemd/man/systemd-networkd.html#)
- [freedesktop.org - Virtual Network Device configuration](https://www.freedesktop.org/software/systemd/man/systemd.netdev.html#)
- [freedesktop.org - Network configuration](https://www.freedesktop.org/software/systemd/man/systemd.network.html#)
- [freedesktop.org - Network device configuration](https://www.freedesktop.org/software/systemd/man/systemd.link.html#)

Manual pages:
- `man networkctl`{{exec}}
<br>
<details><summary>Supported 'netdev' kinds</summary>
<pre>
  <strong>bond</strong>   - aggregation of all its slave devices. See Linux Ethernet Bonding Driver HOWTO for details.
  <strong>bridge</strong> - software switch, and each of its slave devices and the bridge itself are ports of the switch.
  <strong>dummy</strong>  - drops all packets sent to it.
  <strong>gre</strong>    - level 3 GRE tunnel over IPv4. See RFC 2784 for details. Name "gre0" should not be used, as the kernel creates a device with this name when the corresponding kernel module is loaded.
  <strong>gretap</strong> - level 2 GRE tunnel over IPv4. Name "gretap0" should not be used, as the kernel creates a device with this name when the corresponding kernel module is loaded.
  <strong>erspan</strong> - ERSPAN mirrors traffic on one or more source ports and delivers the mirrored traffic to one or more destination ports on another switch.
  <strong>ip6gre</strong> - level 3 GRE tunnel over IPv6.
  <strong>ip6tnl</strong> - IPv4 or IPv6 tunnel over IPv6
  <strong>ip6gretap</strong> - level 2 GRE tunnel over IPv6.
  <strong>ipip</strong>   - IPv4 over IPv4 tunnel.
  <strong>ipvlan</strong> - IPVLAN device is a stacked device which receives packets from its underlying device based on IP address filtering.
  <strong>ipvtap</strong> - IPVTAP device is a stacked device which receives packets from its underlying device based on IP address filtering and can be accessed using the tap user space interface.
  <strong>macvlan</strong> - stacked device which receives packets from its underlying device based on MAC address filtering.
  <strong>macvtap</strong> - stacked device which receives packets from its underlying device based on MAC address filtering.
  <strong>sit</strong>    - IPv6 over IPv4 tunnel.
  <strong>tap</strong>    - persistent Level 2 tunnel between a network device and a device node.
  <strong>tun</strong>    - persistent Level 3 tunnel between a network device and a device node.
  <strong>veth</strong>   - Ethernet tunnel between a pair of network devices.
  <strong>vlan</strong>   - stacked device which receives packets from its underlying device based on VLAN tagging. See IEEE 802.1Q for details.
  <strong>vti</strong>    - IPv4 over IPSec tunnel.
  <strong>vti6</strong>   - IPv6 over IPSec tunnel.
  <strong>vxlan</strong>  - virtual extensible LAN (vxlan), for connecting Cloud computing deployments.
  <strong>geneve</strong> - GEneric NEtwork Virtualization Encapsulation (GENEVE) netdev driver.
  <strong>l2tp</strong>   - Layer 2 Tunneling Protocol (L2TP) is a tunneling protocol used to support virtual private networks (VPNs) or as part of the delivery of services by ISPs. It does not provide any encryption or confidentiality by itself
  <strong>macsec</strong> - 802.1AE IEEE industry-standard security technology that provides secure communication for all traffic on Ethernet links.
  <strong>vrf</strong>    - Virtual Routing and Forwarding (VRF) interface to create separate routing and forwarding domains.
  <strong>vcan</strong>   - virtual CAN driver (vcan). Similar to the network loopback devices, vcan offers a virtual local CAN interface.
  <strong>vxcan</strong>  - virtual CAN tunnel driver (vxcan). Similar to the virtual ethernet driver veth, vxcan implements a local CAN traffic tunnel between two virtual CAN network devices. When creating a vxcan, two vxcan devices are created as pair. When one end receives the packet it appears on its pair and vice versa. The vxcan can be used for cross namespace communication.
  <strong>wireguard</strong> - Secure Network Tunnel.
  <strong>nlmon</strong>  - Netlink monitor device. Use an nlmon device when you want to monitor system Netlink messages.
  <strong>fou</strong>    - Foo-over-UDP tunneling.
  <strong>xfrm</strong>   - virtual tunnel interface like vti/vti6 but with several advantages.
  <strong>ifb</strong>    - Intermediate Functional Block (ifb) pseudo network interface acts as a QoS concentrator for multiple different sources of traffic.
  <strong>bareudp</strong> - UDP tunnels provide a generic L3 encapsulation support for tunnelling different L3 protocols like MPLS, IP etc. inside of an UDP tunnel.
  <strong>batadv</strong> - B.A.T.M.A.N. Advanced is a routing protocol for multi-hop mobile ad-hoc networks which operates on layer 2.
  <strong>ipoib</strong>  - IP over Infiniband subinterface.
  <strong>wlan</strong>   - virtual wireless network (WLAN) interface.
  <br>
  GoTo <a href="https://docs.kernel.org/networking/index.html">Linux Networking subsystem documentation</a> for more information.
</pre>
</details>
<details open><summary>'networkctl' commands</summary>
<pre>
  <strong>list [PATTERN…]</strong>    - Show a list of existing links and their status.
  <strong>status [PATTERN…]</strong>  - Show information about the specified links: type, state, kernel module driver, hardware and IP address, configured DNS servers, etc.
  <strong>lldp [PATTERN…]</strong>    - Show discovered LLDP (Link Layer Discovery Protocol) neighbors.
  <strong>label</strong>              - Show numerical address labels that can be used for address selection.
  <strong>delete DEVICE…</strong>     - Deletes virtual netdevs. Takes interface name or index number.
  <strong>up DEVICE…</strong>         - Bring devices up.
  <strong>down DEVICE…</strong>       - Bring devices down.
  <strong>renew DEVICE…</strong>      - Renew dynamic configurations e.g. addresses received from DHCP server.
  <strong>forcerenew DEVICE…</strong> - Send a FORCERENEW message to all connected clients, triggering DHCP reconfiguration.
  <strong>reconfigure DEVICE…</strong> - Reconfigure network interfaces.
  <strong>reload</strong>             - Reload .netdev and .network files.
</pre>
</details><br>

Task list:
- Create dummy network interface
- Bring it up and assign IPv4 address
- Create 3 processes with isolated network 

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ sudo vi /etc/systemd/network/dummy.netdev
      [NetDev]
      Name=dummy0
      Description=Some dummy NetDev
      Kind=dummy
  $ sudo networkctl reload
  $ sudo networkctl list
<br>
<strong>Task 2:</strong>
  $ sudo ip addr add 192.168.1.150/24 dev dummy0
  $ sudo ip link set dummy0 up
  $ networkctl list
<br>
<strong>Task 3:</strong>
  $ sudo ip netns add Isolated1
  $ sudo ip netns add Isolated2
  $ sudo ip netns add Isolated3
  $ sudo ip netns
  $
  $ sudo ip link add vvegh1 type veth peer name vvegh01
  $ sudo ip link add vvegh2 type veth peer name vvegh02
  $ sudo ip link add vvegh3 type veth peer name vvegh03
  $
  $ sudo ip link set vvegh01 netns Isolated1
  $ sudo ip link set vvegh02 netns Isolated2 
  $ sudo ip link set vvegh03 netns Isolated3
  $  
  $ ip addr add 192.168.1.1/24 dev vvegh1
  $ ip link set dev vvegh1 up
  $ ip netns exec Isolated1 ip addr add 192.168.1.2/24 dev vvegh01
  $ ip netns exec Isolated1 ip link set dev vvegh01 up
  $ # ping 192.168.1.2
  $  
  $ ip addr add 192.168.2.1/24 dev vvegh2
  $ ip link set dev vvegh2 up
  $ ip netns exec Isolated2 ip addr add 192.168.2.2/24 dev vvegh02
  $ ip netns exec Isolated2 ip link set dev vvegh02 up
  $ # ping 192.168.2.2
  $  
  $ ip addr add 192.168.3.1/24 dev vvegh3
  $ ip link set dev vvegh3 up
  $ ip netns exec Isolated3 ip addr add 192.168.3.2/24 dev vvegh03
  $ ip netns exec Isolated3 ip link set dev vvegh03 up
  $ # ping 192.168.3.2
  

</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
