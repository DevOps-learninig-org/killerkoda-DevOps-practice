First of all - useful links:

- [systemd.io - Main page](https://systemd.io/)
- [freedesktop.org - systemd System and Service Manager](https://link.org/)
- [freedesktop.org - systemd manual pages](https://www.freedesktop.org/software/systemd/man/)
- [gist.github.org - Linux - Systemd cheatsheet](https://gist.github.com/mbodo/8f87c96ce11e91f80fbf6175412a2206)
- [freedesktop.org - General syntax of systemd configuration files](https://www.freedesktop.org/software/systemd/man/systemd.syntax.html)
- [digitalocean.com - Systemd Essentials: Working with Services, Units, and the Journal](https://www.digitalocean.com/community/tutorials/systemd-essentials-working-with-services-units-and-the-journal)
- [freedesktop.org - Unit configuration](https://www.freedesktop.org/software/systemd/man/systemd.unit.html#)

- [youtube.com - Linux systemd](https://www.youtube.com/watch?v=N1vgvhiyq0E&list=PLtK75qxsQaMKPbuVpGuqUQYRiTwTAmqeI)
- [youtube.com - Systemd tutorials](https://www.youtube.com/watch?v=KftuGM_ylKg&list=PL6IQ3nFZzWfpKKWfZMRxiuEBwqQBwjzS1)
<br>
<details><summary>Systemd controllers</summary>
<pre>
  <a href="https://www.freedesktop.org/software/systemd/man/bootctl.html">bootctl</a>     — Control EFI firmware boot settings and manage boot loader
  <a href="https://www.freedesktop.org/software/systemd/man/busctl.html">busctl</a>      — Introspect the bus
  <a href="https://www.freedesktop.org/software/systemd/man/coredumpctl.html">coredumpctl</a> — Retrieve and process saved core dumps and metadata
  <a href="https://www.freedesktop.org/software/systemd/man/homectl.html">homectl</a>     — Create, remove, change or inspect home directories
  <a href="https://www.freedesktop.org/software/systemd/man/hostnamectl.html">hostnamectl</a> — Control the system hostname
  <a href="https://www.freedesktop.org/software/systemd/man/journalctl.html">journalctl</a>  — Print log entries from the systemd journal
  <a href="https://www.freedesktop.org/software/systemd/man/localectl.html">localectl</a>   — Control the system locale and keyboard layout settings
  <a href="https://www.freedesktop.org/software/systemd/man/loginctl.html">loginctl</a>    — Control the systemd login manager
  <a href="https://www.freedesktop.org/software/systemd/man/machinectl.html">machinectl</a>  — Control the systemd machine manager
  <a href="https://www.freedesktop.org/software/systemd/man/networkctl.html">networkctl</a>  — Query the status of network links
  <a href="https://www.freedesktop.org/software/systemd/man/oomctl.html">oomctl</a>      — Analyze the state stored in systemd-oomd
  <a href="https://www.freedesktop.org/software/systemd/man/portablectl.html">portablectl</a> — Attach, detach or inspect portable service images
  <a href="https://www.freedesktop.org/software/systemd/man/resolvectl.html">resolvectl</a>  — Resolve domain names, IPV4 and IPv6 addresses, DNS resource records, and services; introspect and reconfigure the DNS resolver
  <a href="https://www.freedesktop.org/software/systemd/man/systemctl.html">systemctl</a>   — Control the systemd system and service manager
  <a href="https://www.freedesktop.org/software/systemd/man/timedatectl.html">timedatectl</a> — Control the system time and date
  <a href="https://www.freedesktop.org/software/systemd/man/userdbctl.html">userdbctl</a>   — Inspect users, groups and group memberships
</pre>
</details>
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
</details>
<details><summary>Unit fiile search paths</summary>
<pre>
  Load path when running in system mode (systemctl --system):
  <br>
  <strong>/etc/systemd/system.control</strong>  - Persistent and transient configuration created using the dbus API
  <strong>/run/systemd/system.control</strong>  - Persistent and transient configuration created using the dbus API
  <strong>/run/systemd/transient</strong>       - Dynamic configuration for transient units
  <strong>/run/systemd/generator.early</strong> - Generated units with high priority (see early-dir in systemd.generator(7))
  <strong>/etc/systemd/system</strong>          - System units created by the administrator
  <strong>/run/systemd/system</strong>          - Runtime units
  <strong>/run/systemd/generator</strong>       - Generated units with medium priority (see normal-dir in systemd.generator(7))
  <strong>/usr/local/lib/systemd/system</strong> - System units installed by the administrator
  <strong>/usr/lib/systemd/system</strong>      - System units installed by the distribution package manager
  <strong>/run/systemd/generator.late</strong>  - Generated units with low priority (see late-dir in systemd.generator(7))
  <br>
  Load path when running in user mode (systemctl --user):
  <br>
  <strong>$XDG_CONFIG_HOME/systemd/user or $HOME/.config/systemd/user</strong>  - User configuration ($XDG_CONFIG_HOME is used if set, ~/.config otherwise)
  <strong>$XDG_CONFIG_HOME/systemd/user.control or ~/.config/systemd/user.control</strong>  - Persistent and transient configuration created using the dbus API ($XDG_CONFIG_HOME is used if set, ~/.config otherwise)
  <strong>$XDG_RUNTIME_DIR/systemd/user.control</strong>    - Persistent and transient configuration created using the dbus API ($XDG_CONFIG_HOME is used if set, ~/.config otherwise)
  <strong>$XDG_RUNTIME_DIR/systemd/transient</strong>       - Dynamic configuration for transient units
  <strong>$XDG_RUNTIME_DIR/systemd/generator.early</strong> - Generated units with high priority (see early-dir in systemd.generator(7))
  <strong>$XDG_CONFIG_DIRS/systemd/user or /etc/xdg/systemd/user</strong>       - Additional configuration directories as specified by the XDG base directory specification ($XDG_CONFIG_DIRS is used if set, /etc/xdg otherwise)
  <strong>/etc/systemd/user</strong>                        - User units created by the administrator
  <strong>$XDG_RUNTIME_DIR/systemd/user</strong>            - Runtime units (only used when $XDG_RUNTIME_DIR is set)
  <strong>/run/systemd/user</strong>                        - Runtime units
  <strong>$XDG_RUNTIME_DIR/systemd/generator</strong>       - Generated units with medium priority (see normal-dir in systemd.generator(7))
  <strong>$XDG_DATA_HOME/systemd/user or $HOME/.local/share/systemd/user</strong>                           - Units of packages that have been installed in the home directory ($XDG_DATA_HOME is used if set, ~/.local/share otherwise)
  <strong>$XDG_DATA_DIRS/systemd/user or /usr/local/share/systemd/user and /usr/share/systemd/user</strong> - Additional data directories as specified by the XDG base directory specification ($XDG_DATA_DIRS is used if set, /usr/local/share and /usr/share otherwise)
  <strong>$dir/systemd/user</strong>                        - for each $dir in $XDG_DATA_DIRS	Additional locations for installed user units, one for each entry in $XDG_DATA_DIRS
  <strong>/usr/local/lib/systemd/user</strong>              - User units installed by the administrator
  <strong>/usr/lib/systemd/user</strong>                    - User units installed by the distribution package manager
  <strong>$XDG_RUNTIME_DIR/systemd/generator.late</strong>  - Generated units with low priority (see late-dir in systemd.generator(7))
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
