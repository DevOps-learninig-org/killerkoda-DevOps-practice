First of all - useful links:

- [wikipedia.org - Iproute2](https://en.wikipedia.org/wiki/Iproute2)
- [man7.org - SS(8)](https://man7.org/linux/man-pages/man8/ss.8.html)
- `man ss`{{exec}}

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
  <strong>$ </strong>
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
