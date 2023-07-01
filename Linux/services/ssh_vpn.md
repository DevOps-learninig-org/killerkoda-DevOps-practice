First of all - useful links:

- [ssh.com - SSH Protocol](https://www.ssh.com/academy/ssh/protocol)
- [redhat.com - OpenSSH](https://access.redhat.com/documentation/ru-ru/red_hat_enterprise_linux/7/html/system_administrators_guide/ch-openssh)
- [itsfoss.com - Complete Guide to Configuring SSH in Ubuntu](https://itsfoss.com/set-up-ssh-ubuntu/)
- [digitalocean.com - How to Set Up SSH Keys on Ubuntu 22.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-on-ubuntu-22-04)
- [ssh.com - SSH Tunneling: Examples, Command, Server Config](https://www.ssh.com/academy/ssh/tunneling-example)

Manual pages:
- `man ssh`{{exec}}
- `man ssh_config`{{exec}}
- `man sshd_config`{{exec}}
<br>
<details><summary>Secure SH RFC's</summary>
<pre>
  <a href="https://datatracker.ietf.org/doc/html/rfc4251">RFC 4251</a> — The Secure Shell (SSH) Protocol Architecture
  <a href="https://datatracker.ietf.org/doc/html/rfc4252">RFC 4252</a> — The Secure Shell (SSH) Authentication Protocol
  <a href="https://datatracker.ietf.org/doc/html/rfc4253">RFC 4253</a> — The Secure Shell (SSH) Transport Layer Protocol
  <a href="https://datatracker.ietf.org/doc/html/rfc4254">RFC 4254</a> — The Secure Shell (SSH) Connection Protocol
  <a href="https://datatracker.ietf.org/doc/html/rfc4716">RFC 4254</a> — The Secure Shell (SSH) Public Key File Format
</pre>
</details>
<details><summary>SSH-based Virtual Private Networks</summary>
<pre>
The following example would connect client network 10.0.50.0/24 with remote network 10.0.99.0/24
using a point-to-point connection from 10.1.1.1 to 10.1.1.2:<br>
  10.0.50.0/24 <-> 10.1.1.1 <-=| 192.168.1.15 |=-> 10.1.1.2 <-> 10.0.99.0/24<br>
On the client (SSH server running on the gateway to the remote network, at 192.168.1.15):
    # ssh -f -w 0:1 192.168.1.15 true
    # ifconfig tun0 10.1.1.1 10.1.1.2 netmask 255.255.255.252
    # route add 10.0.99.0/24 10.1.1.2<br>
On the server:
    # ifconfig tun1 10.1.1.2 10.1.1.1 netmask 255.255.255.252
    # route add 10.0.50.0/24 10.1.1.1
</pre>
</details>
<br>

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
