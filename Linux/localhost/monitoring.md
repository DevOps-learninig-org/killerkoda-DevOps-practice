First of all - useful links:

- [github.com - System performance tools](https://github.com/sysstat/sysstat)
- [gnu.org - Accounting Utilities Manual](https://www.gnu.org/software/acct/manual/accounting.html)
- `man vmstat`{{exec}}
- `man ps`{{exec}}

<details><summary>Lesson info and tips</summary>
<pre>
<ins>Some useful tools for monitoring:</ins><br>
  System activity:      <strong>top | htop | atop | btop<strong>
  Virtual Memory:       <strong>free | vmstat | sar | sysstat </strong>
  Processes and tasks:  <strong>ps | pidstat</strong>
  Input/Output:         <strong>iostat | lsof | iotop</strong>
  User activity:        <strong>sa | lastcomm | </strong>
  Explore hardware:     <strong>dmesg | lshw | lscpu | lsusb | lspci | lsblk</strong>
</pre>
</details><br>

Task list:
- Install htop into your system and start it
- Explore hardware in different ways
- Explore running processes

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ snap install htop
  $ htop
<br>
<strong>Task 2:</strong>
  $ dmesg 
  $ lscpu && lsusb && lspci
  $ lshw
<br>
<strong>Task 3:</strong>
  $ sudo apt install sysstat
  $ pidstat
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
