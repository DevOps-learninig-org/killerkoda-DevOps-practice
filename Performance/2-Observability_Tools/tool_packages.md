First of all - useful links:

- [brendangregg.com - Linux Crisis Tools](https://www.brendangregg.com/blog/2024-03-24/linux-crisis-tools.html)
- [gitlab.com - procps](https://gitlab.com/procps-ng/procps)
- [github.com - util-linux](https://github.com/util-linux/util-linux)
- [github.com - sysstat](https://github.com/sysstat/sysstat)
- [kernel.org - iproute2](https://git.kernel.org/pub/scm/network/iproute2/iproute2.git)
- [github.com - numactl](https://github.com/numactl/numactl)
- [github.com - tcpdump](https://github.com/the-tcpdump-group/tcpdump)
- [github.com - bcc](https://github.com/iovisor/bcc?tab=readme-ov-file)
- [github.com - bpftrace](https://github.com/bpftrace/bpftrace)
- [github.com - trace-cmd](https://github.com/rostedt/trace-cmd)

- [brendangregg.com - Linux Crisis Tools](https://www.brendangregg.com/blog/2024-03-24/linux-crisis-tools.html)

<br>
<details open><summary>Lesson info and tips</summary>
<pre>
  <strong>procps (ps, top, vmstat)</strong> – Process and system monitoring utilities.
  <strong>util-linux (lsblk, dmesg, mount)</strong> – Core system utilities for disk, partition, and OS management.
  <strong>sysstat (sar, iostat, mpstat)</strong> – System performance monitoring and historical stats.
  <strong>iproute2 (ip, ss, tc)</strong> – Modern networking and traffic control tools (replaces ifconfig, netstat).
  <strong>numactl</strong> – NUMA memory and CPU binding for optimizing multi-socket systems.
  <strong>tcpdump </strong>– Network packet capture and analysis.
  <strong>BCC (BPF Compiler Collection)</strong> – Dynamic tracing and performance analysis using eBPF.
  <strong>bpftrace</strong> – High-level eBPF scripting for kernel/application tracing.
  <strong>trace-cmd</strong> – Frontend for Linux kernel’s ftrace (low-level event tracing).
</pre>
</details>
<details open><summary>Some examples</summary>
<pre>
  <strong>top -p $(pgrep nginx)</strong> → Monitor Nginx processes interactively.
  <strong>lsblk -o NAME,SIZE,FSTYPE</strong> → List block devices with key details.
  <strong>sar -u 1 5</strong> → Check CPU usage every second for 5 seconds.
  <strong>ss -pan</strong> → Show all listening TCP/UDP ports with processes.
  <strong>numactl --cpunodebind=0 --membind=0 ./app</strong> → Run app on NUMA node 0.
  <strong>tcpdump -i eth0 port 80</strong> → Capture HTTP traffic on eth0.
  <strong>execsnoop-bpfcc</strong> → Trace new process executions in real-time.
  <strong>bpftrace -e 'tracepoint:syscalls:sys_enter_open { printf("%s\n", str(args->filename)); }'</strong> → Log file opens.
  <strong>trace-cmd record -e sched:sched_switch</strong> → Record CPU scheduler switches.
</pre>
</details>
<br>

Task list:
- Read ALL documentation on the links above and watch videos
- Run top -b -n 1 | head -n 20 and identify the most CPU-intensive process.
- Run lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT and check disk partitioning.
- Run sar -r 1 3 and analyze memory usage trends.
- Run ss -tulnp | grep LISTEN and list all listening services.
- Run numactl --hardware and describe NUMA node layout.
- Run sudo tcpdump -i lo -c 5 and capture 5 loopback packets.
- Run sudo opensnoop-bpfcc -d 5 and log opened files for 5 sec.
- Run sudo bpftrace -e 'kprobe:vfs_read { @[comm] = count(); }' for 10 sec (Ctrl+C) and count read() calls by process.
- Run sudo trace-cmd record -e net:* -N 127.0.0.1 -o trace.dat for 5 sec, then trace-cmd report trace.dat | head -n 15 to inspect network events.
Bonus: Compare vmstat 1 5 (procps) vs. sar -u 1 5 (sysstat). Which is clearer for CPU stats?
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>

