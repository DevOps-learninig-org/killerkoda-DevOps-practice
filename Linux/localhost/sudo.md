First of all - useful links:

- [sudo.ws - A Short Introduction](https://www.sudo.ws/about/intro/)
- [github.com - SUDO project source code](https://github.com/sudo-project/sudo)
- `man sudoers`{{exec}}
- [cheat.sh - SUDO](https://cheat.sh/sudo)
- [digitalocean.com - How To Edit the Sudoers File](https://www.digitalocean.com/community/tutorials/how-to-edit-the-sudoers-file)
<br>
<details><summary>Most common scenarios</summary>
<pre>
  List the current user's sudo(8) privileges.
    <strong>$ sudo -l</strong><br>
  Begin a shell session as the system's `root` user.
    <strong>$ sudo -i</strong><br>
  Run a command as the superuser
    <strong>$ sudo less /var/log/syslog</strong><br>
  Run a command as another user and/or group
    <strong>$ sudo --user=user1 --group=group1 id -a</strong><br>
  Launch the default shell with superuser privileges without changing the environment
    <strong>$ sudo --shell</strong>
</pre>
</details><br>

Task list:
- Run `ls -AlF` with superuser priveledges
- Edit /etc/sudoers with visudo

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ sudo ls -AlF
<br>
<strong>Task 2:</strong>
  $ visudo
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
