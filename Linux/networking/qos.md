First of all - useful links:

- [tldp.org - Traffic Control HOWTO](https://tldp.org/HOWTO/Traffic-Control-HOWTO/overview.html)
- [lartc.org - Linux Advanced Routing & Traffic Control](https://lartc.org/)
- `man tc`{{exec}}
- [youtube.com - Shaping Linux Traffic with tc](https://www.youtube.com/watch?v=Ylf4J736JIg)
<br>
<details><summary>Correlation between TC elements and Linux components</summary>
<pre>
  <strong>shaping</strong>      - The 'class' offers shaping capabilities.
  <strong>scheduling</strong>   - A 'qdisc' is a scheduler. Schedulers can be simple such as the FIFO or complex, containing classes and other qdiscs, such as HTB.
  <strong>classifying</strong>  - The 'filter' object performs the classification through the agency of a classifier object. Strictly speaking, Linux classifiers cannot exist outside of a filter.
  <strong>policing</strong>     - A 'policer' exists in the Linux traffic control implementation only as part of a filter.
  <strong>dropping</strong>     - To drop traffic requires a 'filter' with a 'policer' which uses "drop" as an action.
  <strong>marking</strong>      - The 'dsmark qdisc' is used for marking.
</pre>
</details>
<details><summary>What are QDISC and Classes</summary>
<pre>
  QDISC is short for 'queueing discipline' and it is elementary to understanding traffic control.
  Whenever the kernel needs to send a packet to an interface, it is enqueued to the qdisc configured for that interface.
  Immediately afterwards, the kernel tries to get as many packets as possible from the qdisc, for giving them to the network adaptor driver.
  <br>
  Some qdiscs can contain classes, which contain further qdiscs - traffic may then be enqueued in any of the inner qdiscs, which are within the classes.
</pre>
</details>
<details><summary>What is filter</summary>
<pre>
  A filter is used by a classful qdisc to determine in which class a packet will be enqueued.
  <br>
  The available filters are:
  <strong>basic</strong>    - Filter packets based on an ematch expression. See tc-ematch(8) for details.
  <strong>bpf</strong>      - Filter packets using (e)BPF, see tc-bpf(8) for details.
  <strong>cgroup</strong>   - Filter packets based on the control group of their process. See tc-cgroup(8) for details.
  <strong>flow, flower</strong> - Flow-based classifiers, filtering packets based on their flow (identified by selectable keys). See tc-flow(8) and tc-flower(8) for details.
  <strong>fw</strong>       - Filter based on fwmark. Directly maps fwmark value to traffic class. See tc-fw(8).
  <strong>route</strong>    - Filter packets based on routing table. See tc-route(8) for details.
  <strong>rsvp</strong>     - Match Resource Reservation Protocol (RSVP) packets.
  <strong>tcindex</strong>  - Filter packets based on traffic control index. See tc-tcindex(8).
  <strong>u32</strong>      - Generic filtering on arbitrary packet data, assisted by syntax to abstract common operations. See tc-u32(8) for details.
  <strong>matchall</strong> - Traffic control filter that matches every packet. See tc-matchall(8) for details.
</pre>
</details>
<br>

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
