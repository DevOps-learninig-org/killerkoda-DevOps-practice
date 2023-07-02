First of all - useful links:

- [netfilter.org - Main page](https://www.netfilter.org/)
- [netfilter.org - Documentation](https://www.netfilter.org/documentation/index.html)
- [frozentux.net - IPtables tutorial](https://www.frozentux.net/iptables-tutorial/iptables-tutorial.html)
- [ubuntu.com - Introduction to UFW](https://help.ubuntu.com/community/UFW)

Manual pages:
- `man iptables`{{exec}}
- `man ufw`{{exec}}
<br>
<details><summary>IPtables tables and chains</summary>
<pre>
  <strong>RAW</strong> - Used to set NOTRACK packet mark
    - <strong>PREROUTING</strong> - Handle packets before the connection tracking takes place.
    - <strong>OUTPUT</strong> - Is the same when localhost is the source of packer.
  <strong>FILTER</strong> - Used for packet filtering.
    - <strong>INPUT</strong>    –  Chain for packets coming to the local server.
    - <strong>OUTPUT</strong>   – Chain for packets generated locally and going out of the local server.
    - <strong>FORWARD</strong>  – Chain for or packets routed through the local server.
  <strong>NAT</strong> - Used for address translation.
    - <strong>PREROUTING</strong>   – Alters packets before routing.
    - <strong>POSTROUTING</strong>  – Alters packets after routing.
    - <strong>OUTPUT</strong>       – NAT for locally generated packets on the firewall
  <strong>MANGLE</strong> - Can be used for special-purpose processing of packets i.e. QoS, VPN, etc.
    - <strong>PREROUTING</strong>
    - <strong>OUTPUT</strong>
    - <strong>FORWARD</strong>
    - <strong>INPUT</strong>
    - <strong>POSTROUTING</strong>
</pre>
</details>
<details><summary>Iptables targets and jumps (-j &lt;TARGET&gt;)</summary>
<pre>  
  <strong>ACCEPT</strong>    - the rule is accepted and will not continue traversing the current chain or any other ones in the same table.
  <strong>CLASSIFY</strong>  - used to classify packets in such a way that can be used by a couple of different qdiscs (Queue Disciplines).
  <strong>CLUSTERIP</strong> - used to create simple clusters of nodes answering to the same IP and MAC address in a round robin fashion.
  <strong>CONNMARK</strong>  - used to set a mark on a whole connection, much the same way as the MARK target does.
  <strong>CONNSECMARK</strong> - sets a SELinux security context mark to or from a packet mark.
  <strong>DNAT</strong>      - used to do Destination Network Address Translation, which means that it is used to rewrite the Destination IP address of a packet.
  <strong>DROP</strong>      - drops packets dead and will not carry out any further processing.
  <strong>DSCP</strong>      - changes the DSCP(Differentiated Services Field) marks inside a packet.
  <strong>ECN</strong>       - ECN target can be used to reset the ECN bits from the IPv4 header, or to put it correctly, reset them to 0 at least.
  <strong>LOG</strong>       - logging detailed information about packets.
  <strong>MARK</strong>      - set Netfilter mark values that are associated with specific packets.
  <strong>MASQUERADE</strong> - used basically the same as the SNAT target, but it does not require any --to-source option.
  <strong>MIRROR</strong>    - is an experimental and demonstration target only, and you are warned against using it, since it may result in really bad loops hence, among other things, resulting in serious Denial of Service.
  <strong>NETMAP</strong>    - new implementation of the SNAT and DNAT targets where the host part of the IP address isn't changed.
  <strong>NFQUEUE</strong>   - used much the same way as the QUEUE target, and is basically an extension of it.
  <strong>NOTRACK</strong>   - used to turn off connection tracking for all packets matching this rule.
  <strong>QUEUE</strong>     - used to queue packets to User-land programs and applications.
  <strong>REDIRECT</strong>  - used to redirect packets and streams to the machine itself.
  <strong>REJECT</strong>    - works basically the same as the DROP target, but it also sends back an error message to the host sending the packet that was blocked.
  <strong>RETURN</strong>    - will cause the current packet to stop traveling through the chain where it hit the rule.
  <strong>SAME</strong>      - works almost in the same fashion as the SNAT target, but it still differs.
  <strong>SECMARK</strong>   - used to set a security context mark on a single packet, as defined by SELinux and security systems.
  <strong>SNAT</strong>      - used to do Source Network Address Translation, which means that this target will rewrite the Source IP address in the IP header of the packet.
  <strong>TCPMSS</strong>    - can be used to alter the MSS (Maximum Segment Size) value of TCP SYN packets that the firewall sees.
  <strong>TOS</strong>       - used to set the Type of Service field within the IP header.
  <strong>TTL</strong>       - used to modify the Time To Live field in the IP header.
  <strong>ULOG</strong>      - used to provide user-space logging of matching packets.
</pre>
</details>
<details><summary>UFW cheatsheet</summary>
<pre>
   <strong>enable</strong>        - enables the firewall
   <strong>disable</strong>       - disables the firewall
   <strong>default ARG</strong>   - set default policy
   <strong>logging LEVEL</strong> - set logging to LEVEL
   <strong>allow ARGS</strong>    - add allow rule
   <strong>deny ARGS</strong>     - add deny rule
   <strong>reject ARGS</strong>   - add reject rule
   <strong>limit ARGS</strong>    - add limit rule
   <strong>delete RULE|NUM</strong> - delete RULE
   <strong>insert NUM RULE</strong> - insert RULE at NUM
   <strong>prepend RULE</strong>  - prepend RULE
   <strong>route RULE</strong>    - add route RULE
   <strong>route delete RULE|NUM</strong> - delete route RULE
   <strong>route insert NUM RULE</strong> - insert route RULE at NUM
   <strong>reload</strong>        - reload firewall
   <strong>reset</strong>         - reset firewall
   <strong>status</strong>        - show firewall status
   <strong>status numbered</strong> - show firewall status as numbered list of RULES
   <strong>status verbose</strong>  - show verbose firewall status
   <strong>show ARG</strong>      - show firewall report
   <strong>version</strong>       - display version information<br>
  Application profile commands
    <strong>app list</strong>           - list application profiles
    <strong>app info PROFILE</strong>   - show information on PROFILE
    <strong>app update PROFILE</strong> - update PROFILE
    <strong>app default ARG</strong>    - set default application policy
</pre>
</details><br>

Task list:
- Determine what ttl the packet will have after ping 1.1.1.1
- Change the TTL of the incoming ICMP packet from 1.1.1.1 to 77

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ ping 1.1.1.1
  PING 1.1.1.1 (1.1.1.1) 56(84) bytes of data.
  64 bytes from 1.1.1.1: icmp_seq=1 <strong>ttl=51</strong> time=1.48 ms
<br>
<strong>Task 2:</strong>
  $ sudo iptables -t mangle -A PREROUTING -p icmp -j TTL --ttl-set 77
  $ ping 1.1.1.1
  PING 1.1.1.1 (1.1.1.1) 56(84) bytes of data.
  64 bytes from 1.1.1.1: icmp_seq=1 <strong>ttl=77</strong> time=1.56 ms
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
