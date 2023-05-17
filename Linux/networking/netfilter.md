First of all - useful links:

- [netfilter.org - Main page](https://www.netfilter.org/)
- [netfilter.org - Documentation](https://www.netfilter.org/documentation/index.html)
- [frozentux.net - IPtables tutorial](https://www.frozentux.net/iptables-tutorial/iptables-tutorial.html)
- [ubuntu.com - Introduction to UFW](https://help.ubuntu.com/community/UFW)
- `man iptables`{{exec}}
- `man ufw`{{exec}}

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
  ACCEPT    - the rule is accepted and will not continue traversing the current chain or any other ones in the same table.
  CLASSIFY  - used to classify packets in such a way that can be used by a couple of different qdiscs (Queue Disciplines).
  CLUSTERIP - used to create simple clusters of nodes answering to the same IP and MAC address in a round robin fashion.
  CONNMARK  - used to set a mark on a whole connection, much the same way as the MARK target does.
  CONNSECMARK - sets a SELinux security context mark to or from a packet mark.
  DNAT      - used to do Destination Network Address Translation, which means that it is used to rewrite the Destination IP address of a packet.
  DROP      - drops packets dead and will not carry out any further processing.
  DSCP      - changes the DSCP(Differentiated Services Field) marks inside a packet.
  ECN       - ECN target can be used to reset the ECN bits from the IPv4 header, or to put it correctly, reset them to 0 at least.
  LOG       - logging detailed information about packets.
  MARK      - set Netfilter mark values that are associated with specific packets.
  MASQUERADE - used basically the same as the SNAT target, but it does not require any --to-source option.
  MIRROR    - is an experimental and demonstration target only, and you are warned against using it, since it may result in really bad loops hence, among other things, resulting in serious Denial of Service.
  NETMAP    - new implementation of the SNAT and DNAT targets where the host part of the IP address isn't changed.
  NFQUEUE   - used much the same way as the QUEUE target, and is basically an extension of it.
  NOTRACK   - used to turn off connection tracking for all packets matching this rule.
  QUEUE     - used to queue packets to User-land programs and applications.
  REDIRECT  - used to redirect packets and streams to the machine itself.
  REJECT    - works basically the same as the DROP target, but it also sends back an error message to the host sending the packet that was blocked.
  RETURN    - will cause the current packet to stop traveling through the chain where it hit the rule.
  SAME      - works almost in the same fashion as the SNAT target, but it still differs.
  SECMARK   - used to set a security context mark on a single packet, as defined by SELinux and security systems.
  SNAT      - used to do Source Network Address Translation, which means that this target will rewrite the Source IP address in the IP header of the packet.
  TCPMSS    - can be used to alter the MSS (Maximum Segment Size) value of TCP SYN packets that the firewall sees.
  TOS       - used to set the Type of Service field within the IP header.
  TTL       - used to modify the Time To Live field in the IP header.
  ULOG      - used to provide user-space logging of matching packets.
</pre>
</details><br>

Task list:
- Task 1
- Task 2

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ cmd1
  $ echo ${string:7:3}
<br>
<strong>Task 2:</strong>
  $ echo ${#string}
  $ string=
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
