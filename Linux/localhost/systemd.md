First of all - useful links:

- [systemd.io - Main page](https://systemd.io/)
- [freedesktop.org - systemd System and Service Manager](https://link.org/)
- [freedesktop.org - systemd manual pages](https://www.freedesktop.org/software/systemd/man/)
- [gist.github.org - Linux - Systemd cheatsheet](https://gist.github.com/mbodo/8f87c96ce11e91f80fbf6175412a2206)
- [freedesktop.org - General syntax of systemd configuration files](https://www.freedesktop.org/software/systemd/man/systemd.syntax.html)
- [digitalocean.com - Systemd Essentials: Working with Services, Units, and the Journal](https://www.digitalocean.com/community/tutorials/systemd-essentials-working-with-services-units-and-the-journal)
- [freedesktop.org - Unit configuration](https://www.freedesktop.org/software/systemd/man/systemd.unit.html#)
- `man systemctl`{{exec}}
- `man journalctl`{{exec}}
- `man resolvectl`{{exec}}
- [youtube.com - Linux systemd](https://www.youtube.com/watch?v=N1vgvhiyq0E&list=PLtK75qxsQaMKPbuVpGuqUQYRiTwTAmqeI)
- [youtube.com - Systemd tutorials](https://www.youtube.com/watch?v=KftuGM_ylKg&list=PL6IQ3nFZzWfpKKWfZMRxiuEBwqQBwjzS1)

<details><summary>Lesson info and tips</summary>
<pre>
  Most popular systemctl commands:<br>
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
