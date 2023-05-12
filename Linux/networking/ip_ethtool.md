First of all - useful links:

- [github.com - 'ip' source code](https://github.com/shemminger/iproute2/tree/main/ip)
- [redhat.com - 'ip' cheatsheet](https://access.redhat.com/sites/default/files/attachments/rh_ip_command_cheatsheet_1214_jcs_print.pdf)
- [kernel.org - 'ethtool' Controlling network drivers and hardware](http://www.kernel.org/pub/software/network/ethtool/)
- `man ip`{{exec}}
- `man ethtool`{{exec}}

<details><summary>'ip' objects summary</summary>
<pre>
  <strong>address</strong>    - protocol (IP or IPv6) address on a device.
  <strong>addrlabel</strong>  - label configuration for protocol address selection.
  <strong>l2tp</strong>       - tunnel ethernet over IP (L2TPv3).
  <strong>link</strong>       - network device.
  <strong>maddress</strong>   - multicast address.
  <strong>monitor</strong>    - watch for netlink messages.
  <strong>mptcp</strong>      - manage MPTCP path manager.
  <strong>mroute</strong>     - multicast routing cache entry.
  <strong>mrule</strong>      - rule in multicast routing policy database.
  <strong>neighbour</strong>  - manage ARP or NDISC cache entries.
  <strong>netns</strong>      - manage network namespaces.
  <strong>ntable</strong>     - manage the neighbor cache's operation.
  <strong>route</strong>      - routing table entry.
  <strong>rule</strong>       - rule in routing policy database.
  <strong>tcp_metrics/tcpmetrics</strong> - manage TCP Metrics.
  <strong>token</strong>      - manage tokenized interface identifiers.
  <strong>tunnel</strong>     - tunnel over IP.
  <strong>tuntap</strong>     - manage TUN/TAP devices.
  <strong>vrf</strong>        - manage virtual routing and forwarding devices.
  <strong>xfrm</strong>       - manage IPSec policies.
</pre>
</details>
<details><summary>'ethtool' - cheatsheet</summary>
<pre>
  <strong>ethtool -S &lt;interface&gt;</strong>     - statistics for the selected interface
  <strong>ethotool -P &lt;interface&gt;</strong>    - interface permanent address
  <strong>ethtool -s &lt;interface&gt; [ speed %d ]</strong>        - set interface speed
  <strong>ethtool -s &lt;interface&gt; [ autoneg on|off ]</strong>  - set interface autonegotiation
  <strong>ethtool -S &lt;interface&gt; | grep error</strong>        - get interface errors
  <strong>ethtool &lt;interface&gt;</strong>        - current settings
  <strong>ethtool --driver &lt;interface&gt;</strong>               - driver information
  <strong>ethtool --show-features &lt;interface&gt;</strong>        - all supported features
  <strong>ethtool --statistics &lt;interface&gt;</strong>           - network usage statistics
  <strong>ethtool --identify &lt;interface&gt; 10</strong>          - blink one or more LEDs on an interface for 10 seconds
  <strong>ethtool -s eth0 speed 10|100|1000 duplex half|full autoneg on|off</strong> - link speed, duplex mode, and parameter auto-negotiation
</pre>
</details><br>

Task list:
- Get list of namespaces in the system
- Watch interface MAC-address

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ ip netns list
<br>
<strong>Task 2:</strong>
  $ ethtool -P &lt;interface&gt;
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
