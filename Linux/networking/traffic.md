First of all - useful links:

- [tcpdump.org - Main page](https://www.tcpdump.org/)
- [github.com - 'tcpdump' source code](https://github.com/the-tcpdump-group/libpcap)
- [gist.github.com - 'tcpdump' cheapsheet](https://gist.github.com/jforge/27962c52223ea9b8003b22b8189d93fb)
- [packetlife.net - 'tcpdump' cheapsheet](https://packetlife.net/media/library/12/tcpdump.pdf)
- [tcpdump.org - tcpdump(1) man page](https://www.tcpdump.org/manpages/tcpdump.1.html)
- `man tcpdump`{{exec}}
- [nmap.org - Main page](https://nmap.org/)
- [nmap.org - Documentation](https://nmap.org/docs.html)
- [tutorialspoint.com - 'nmap' cheatsheet](https://www.tutorialspoint.com/nmap-cheat-sheet)
- `apt install nmap -y && man nmap`{{exec}}
- `nmap --script-help all | less`{{exec}}

Task list:
- Explote what traffic goes onto your host
- Scan localhost for open ports

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ tcpdump -i enp1s0
<br>
<strong>Task 2:</strong>
  $ nmap localhost
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
