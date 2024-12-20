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
  - <a href="https://en.wikipedia.org/wiki/Open_Shortest_Path_First">wikipedia.org - Open Shortest Path First</a>
  - <a href="https://www.rfc-editor.org/rfc/rfc2328.html">rfc-editor.org - rfc2328 OSPFv2</a>
  - <a href="https://www.rfc-editor.org/rfc/rfc5340.html">rfc-editor.org - rfc5340 OSPFv3 for IPv6</a>
  - <a href="https://docs.frrouting.org/en/latest/ospfd.html">frrouting.org - OSPFv2</a>
  - <a href="https://docs.frrouting.org/en/latest/ospf6d.html">frrouting.org - OSPFv3</a>
  - <a href="https://bird.network.cz/?get_doc&v=30&f=bird-6.html#ss6.11">bird.network.cz - OSPF</a>
</pre>
</details>
<details><summary>BGP References</summary>
<pre>
  
</pre>
</details><br>

Task list:
- Install FRR daemon at the 1 node
- Install BIRD daemon at the 2 node
- Try to connect this daemons via RIP, OSPF and BGP

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
Look at <a href="https://docs.frrouting.org/en/latest/basics.html">FRR basics</a>
and <a href="https://gitlab.nic.cz/labs/bird/-/wikis/Examples">BIRD examples</a>
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
