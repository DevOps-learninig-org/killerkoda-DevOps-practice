First of all - useful links:

- [frrouting.org - FRRouting User Guide](https://docs.frrouting.org/en/latest/)
- [github.com - FRR source code](https://github.com/FRRouting/frr)
- [network.cz - The BIRD Internet Routing Daemon](https://bird.network.cz/)
- [github.com - BIRD source code](https://github.com/CZ-NIC/bird)
- [openbgpd.org - OpenBGPD](https://www.openbgpd.org/)
- [github.com - Dynamips](https://github.com/GNS3/dynamips)
- [eve-ng.net - EVE NG Documentation](https://www.eve-ng.net/index.php/documentation/)
<br>
<details><summary>Lesson info and tips</summary>
<pre>
  - FRR is a fully featured, high performance, free software IP routing suite. It implements all standard routing protocols such as BGP, RIP, OSPF, IS-IS and more
  - The BIRD project aims to develop a fully functional dynamic IP routing daemon primarily targeted on (but not limited to) Linux, FreeBSD and other UNIX-like systems and distributed under the GNU General Public License.
</pre>
</details>
<br>
<details><summary>OSPF References</summary>
<pre>
  - <a href="https://en.wikipedia.org/wiki/Open_Shortest_Path_First" target="_blank">wikipedia.org - Open Shortest Path First</a>
  - <a href="https://datatracker.ietf.org/doc/html/rfc2328.html" target="_blank">ietf.org - rfc2328 OSPFv2</a>
  - <a href="https://datatracker.ietf.org/doc/html/rfc5340.html" target="_blank">ietf.org - rfc5340 OSPFv3 for IPv6</a>
  - <a href="https://docs.frrouting.org/en/latest/ospfd.html" target="_blank">frrouting.org - OSPFv2</a>
  - <a href="https://docs.frrouting.org/en/latest/ospf6d.html" target="_blank">frrouting.org - OSPFv3</a>
  - <a href="https://bird.network.cz/?get_doc&v=30&f=bird-6.html#ss6.11" target="_blank">bird.network.cz - OSPF</a>
  - <a href="https://man.openbsd.org/ospfd" target="_blank">openbsd.org - ospfd(8)</a>
</pre>
</details>
<details><summary>BGP References</summary>
<pre>
  - <a href="https://en.wikipedia.org/wiki/Border_Gateway_Protocol" target="_blank">wikipedia.org - Border Gateway Protocol</a>
  - <a href="https://datatracker.ietf.org/doc/html/rfc4271.html" target="_blank">ietf.org - rfc4271 A Border Gateway Protocol 4 (BGP-4)</a>
  - <a href="https://docs.frrouting.org/en/latest/bgp.html" target="_blank">frrouting.org - BGP</a>
  - <a href="https://bird.network.cz/?get_doc&v=30&f=bird-6.html#ss6.4" target="_blank">bird.network.cz - BGP</a>
  - <a href="https://www.openbgpd.org/manual.html" target="_blank">openbgpd.org - OpenBGPd Manual pages</a>
</pre>
</details><br>

Task list:
- Install FRR daemon at the 1 node
- Install BIRD daemon at the 2 node
- Try to connect this daemons via RIP, OSPF and BGP

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
Look at <a href="https://docs.frrouting.org/en/latest/basics.html" target="_blank">FRR basics</a>
and <a href="https://gitlab.nic.cz/labs/bird/-/wikis/Examples" target="_blank">BIRD examples</a>
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
