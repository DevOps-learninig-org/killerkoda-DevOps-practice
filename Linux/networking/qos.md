First of all - useful links:

- [tldp.org - Traffic Control HOWTO](https://tldp.org/HOWTO/Traffic-Control-HOWTO/overview.html)
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
<details><summary>What is QDISC</summary>
<pre>
  QDISC is short for 'queueing discipline' and it is elementary to understanding traffic control.
  Whenever the kernel needs to send a packet to an interface, it is enqueued to the qdisc configured for that interface.
  Immediately afterwards, the kernel tries to get as many packets as possible from the qdisc, for giving them to the network adaptor driver.
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
