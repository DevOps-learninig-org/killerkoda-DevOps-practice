First of all - useful links:

- [systemd.io - Main page](https://systemd.io/)
- [freedesktop.org - systemd System and Service Manager](https://link.org/)
- [freedesktop.org - systemd manual pages](https://www.freedesktop.org/software/systemd/man/)
- [gist.github.org - Linux - Systemd cheatsheet](https://gist.github.com/mbodo/8f87c96ce11e91f80fbf6175412a2206)
- [freedesktop.org - General syntax of systemd configuration files](https://www.freedesktop.org/software/systemd/man/systemd.syntax.html)
- [digitalocean.com - Systemd Essentials: Working with Services, Units, and the Journal](https://www.digitalocean.com/community/tutorials/systemd-essentials-working-with-services-units-and-the-journal)
- [freedesktop.org - Unit configuration](https://www.freedesktop.org/software/systemd/man/systemd.unit.html#)
- `man systemctl`{{exec}}
- `man systemctl`{{exec}}
- `man journalctl`{{exec}}
- `man networkctl`{{exec}}
- `man resolvectl`{{exec}}
- [youtube.com - Linux systemd](https://www.youtube.com/watch?v=N1vgvhiyq0E&list=PLtK75qxsQaMKPbuVpGuqUQYRiTwTAmqeI)
- [youtube.com - Systemd tutorials](https://www.youtube.com/watch?v=KftuGM_ylKg&list=PL6IQ3nFZzWfpKKWfZMRxiuEBwqQBwjzS1)

<details><summary>Systemd unit types</summary>
<pre>
  <strong>Service units</strong>  - start and control daemons and the processes they consist of. More details in <strong>systemd.service(5)</strong>.
  <strong>Socket units</strong>   - encapsulate local IPC or network sockets in the system, useful for socket-based activation. More details in <strong>systemd.socket(5)</strong>, for details on socket-based activation and other forms of activation, see <strong>daemon(7)</strong>.
  <strong>Target units</strong>   - group units, or provide well-known synchronization points during boot-up. More details in <strong>systemd.target(5)</strong>.
  <strong>Device units</strong>   - expose kernel devices in systemd and may be used to implement device-based activation. For details, see <strong>systemd.device(5)</strong>.
  <strong>Mount units</strong>    - control mount points in the file system, for details see <strong>systemd.mount(5)</strong>.
  <strong>Automount units</strong> - provide automount capabilities, for on-demand mounting of file systems as well as parallelized boot-up. See <strong>systemd.automount(5)</strong>.
  <strong>Timer units</strong>    - trigger activation of other units based on timers. More details in <strong>systemd.timer(5)</strong>.
  <strong>Swap units</strong>     - encapsulate memory swap partitions or files of the operating system. More details in <strong>systemd.swap(5)</strong>.
  <strong>Path units</strong>     - activate other services when file system objects change or are modified. More details in <strong>systemd.path(5)</strong>.
  <strong>Slice units</strong>    - manage system processes (such as service and scope units) in a hierarchical tree for resource management purposes. More details in <strong>systemd.slice(5)</strong>.
  <strong>Scope units</strong>    - manage foreign processes instead of starting them as well. More details in <strong>systemd.scope(5)</strong>.
</pre>
</details>
<details><summary>Most popular systemctl commands</summary>
<pre>
    $ systemctl list-units
    $ systemctl status one-of-this.service
    $ systemctl cat nginx.service
    $ sudo systemctl edit --full nginx.service
    $ sudo systemctl disable some_service
    $ journalctl -fk
    $ journalctl -u nginx.service
</pre>
</details><br>

Task list:
- List all unit in the system
- Try to stop disable random service and reboot system

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ systemctl list-units
<br>
<strong>Task 2:</strong>
  $ sudo systemctl disable ModemManager.service
  $ sudo systemctl reboot
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
