First of all - useful links:

- [wikipedia.org - Iproute2](https://en.wikipedia.org/wiki/Iproute2)
- [man7.org - SS(8)](https://man7.org/linux/man-pages/man8/ss.8.html)
- `man ss`{{exec}}
<br>
<details><summary>'ss' state filter</summary>
<pre>
  All standard TCP states:<br>
    <strong>established, listening, closed
    syn-sent, syn-recv,
    fin-wait-1, fin-wait-2, time-wait, close-wait,
    last-ack, closing</strong>
  <strong>all</strong>          - for all the states
  <strong>connected</strong>    - all the states except for listening and closed
  <strong>synchronized</strong> - all the connected states except for syn-sent
  <strong>bucket</strong>       - states, which are maintained as minisockets, i.e. time-wait and syn-recv
  <strong>big</strong>          - opposite to bucket
  <br>
  Example:
    <strong>$ ss state listening</strong>
    <strong>$ ss -tu state established</strong>
</pre>
</details>
<details><summary>'ss' expressions</summary>
<pre>
  <strong>{dst|src} [=] HOST</strong>   - Test if the destination or source matches HOST.
  <strong>{dport|sport} [OP] [FAMILY:]:PORT</strong> - Compare the destination or source port to PORT. OP can be any of "<", "<=", "=", "!=", ">=" and ">". 
  <strong>dev [=|!=] DEVICE</strong>    - DEVICE can be a device name or the index of the interface.
  <strong>fwmark [=|!=] MASK</strong>   - Matches based on the fwmark value for the connection. 
  <strong>cgroup [=|!=] PATH</strong>   - Match if the connection is part of a cgroup at the given path.
  <strong>autobound</strong>            - Match if the port or path of the source address was automatically allocated.
  <br>
  Example:
  <strong>$ ss -o state established '( dport = :ssh or sport = :ssh )'</strong>
</pre>
</details>
<details><summary>Contents of /proc/net directory</summary>
<pre>
  <strong>arp</strong>        — Lists the kernel's ARP table. This file is particularly useful for connecting a hardware address to an IP address on a system.
  <strong>atm/ directory</strong> — The files within this directory contain Asynchronous Transfer Mode (ATM) settings and statistics. This directory is primarily used with ATM networking and ADSL cards.
  <strong>dev</strong>        — Lists the various network devices configured on the system, complete with transmit and receive statistics. This file displays the number of bytes each interface has sent and received, the number of packets inbound and outbound, the number of errors seen, the number of packets dropped, and more.
  <strong>dev_mcast</strong>  — Lists Layer2 multicast groups on which each device is listening.
  <strong>igmp</strong>       — Lists the IP multicast addresses which this system joined.
  <strong>ip_conntrack</strong> — Lists tracked network connections for machines that are forwarding IP connections.
  <strong>ip_tables_names</strong> — Lists the types of iptables in use. This file is only present if iptables is active on the system and contains one or more of the following values: filter, mangle, or nat.
  <strong>ip_mr_cache</strong> — Lists the multicast routing cache.
  <strong>ip_mr_vif</strong>  — Lists multicast virtual interfaces.
  <strong>netstat</strong>    — Contains a broad yet detailed collection of networking statistics, including TCP timeouts, SYN cookies sent and received, and much more.
  <strong>psched</strong>     — Lists global packet scheduler parameters.
  <strong>raw</strong>        — Lists raw device statistics.
  <strong>route</strong>      — Lists the kernel's routing table.
  <strong>rt_cache</strong>   — Contains the current routing cache.
  <strong>snmp</strong>       — List of Simple Network Management Protocol (SNMP) data for various networking protocols in use.
  <strong>sockstat</strong>   — Provides socket statistics.
  <strong>tcp</strong>        — Contains detailed TCP socket information.
  <strong>tr_rif</strong>     — Lists the token ring RIF routing table.
  <strong>udp</strong>        — Contains detailed UDP socket information.
  <strong>unix</strong>       — Lists UNIX domain sockets currently in use.
  <strong>wireless</strong>   — Lists wireless interface data.
</pre>
</details>
<br>

Task list:
- Get all sockets in listen state.
- Get all establishet tcp connetctions

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ ss state listening
<br>
<strong>Task 2:</strong>
  $ ss -tu state established
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
