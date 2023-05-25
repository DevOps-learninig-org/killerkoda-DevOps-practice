First of all - useful links:

- [github.com - Vixie Cron](https://github.com/vixie/cron)
- [wikipedia.org - Cron](https://en.wikipedia.org/wiki/Cron)
- `man cron`{{exec}}
- [freedesktop.org - systemd.timer](https://www.freedesktop.org/software/systemd/man/systemd.timer.html#)

<details><summary>crontab cheatsheet</summary>
<pre>
  <strong>* * * * *</strong> - every second
  <strong>minute hour day(of month) month day(of week)</strong>
  
</pre>
</details><br>

Task list:
- Create script, that ping host 1.1.1.1 one time and write 'results.ping' into users folder
- Create cron job, thar runs script every 1 minute
- Make the same with systemd.timer

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ vi /usr/local/sbin/ping-1-1-1-1.sh
    #!/bin/sh
    ping -c 1 1.1.1.1 > ~/results.ping
<br>
<strong>Task 2:</strong>
  $ systemctl status cron.service
  $ crontab -e
    * * * * * ping-1-1-1-1.sh 2>&1
  $ journalctl _SYSTEMD_UNIT=cron.service
<br>
<strong>Task 3:</strong>
  $ mkdir -p ${XDG_CONFIG_HOME:-~/.config}/systemd/user/
  <br>
  $ vi ping-1-1-1-1.service
    [Unit]
      Description=Small test ping 1.1.1.1 service
    [Service]
      Type=oneshot
      ExecStart=ping-1-1-1-1.sh
    [Install]
      RequiredBy=ping-1-1-1-1.timer
  <br>
  $ vi ping-1-1-1-1.timer
    [Unit]
    [Timer]
      OnCalendar=minutely
      Persistent=true
    [Install]
      WantedBy=timers.target
  <br>
  // only under dockerized env ----
  $ loginctl enable-linger root
  $ XDG_RUNTIME_DIR=/run/user/$(id -u root) systemctl --user enable ping-1-1-1-1.timer
  $ XDG_RUNTIME_DIR=/run/user/$(id -u root) systemctl --user enable ping-1-1-1-1.service
  // only under dockerized env ----
  <br>
  $ systemctl --user enable ping-1-1-1-1.timer
  $ systemctl --user enable ping-1-1-1-1.service
  
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
