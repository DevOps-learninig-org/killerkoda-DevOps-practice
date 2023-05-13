First of all - useful links:

- [freedesktop.org - systemd-networkd — Network manager](https://www.freedesktop.org/software/systemd/man/systemd-networkd.html#)
- [freedesktop.org - Network configuration](https://www.freedesktop.org/software/systemd/man/systemd.network.html#)
- [freedesktop.org - ](https://www.freedesktop.org/software/systemd/man/systemd-networkd.html#)
- `man networkctl`{{exec}}

<details><summary>Lesson info and tips</summary>
<pre>
  Put here some info
</pre>
</details><br>

Task list:
- Create dummy network interface
- Bring it up and assign IPv4 address

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
  $ echo ${#string}
  $ string=
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
