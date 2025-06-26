First of all - useful links:

- [ubuntu.com - Canonical Netplan](https://netplan.io/)
- [readthedocs.io - NetPlan YAML config specification](https://netplan.readthedocs.io/en/stable/netplan-yaml/#properties-for-device-type-bridges)
- [linuxconfig.org - Netplan network configuration tutorial](https://linuxconfig.org/netplan-network-configuration-tutorial-for-beginners)
- [vitux.com - Networking on Ubuntu with Netplan](https://vitux.com/how-to-configure-networking-with-netplan-on-ubuntu/)

Manual pages:
- `man netplan`{{exec}}
<br>
<details open><summary>'netplan' tool commands</summary>
<pre>
  <strong>help</strong>   - Show this help message
  <strong>apply</strong>  - Apply current netplan config to running system
  <strong>generate</strong> - Generate backend specific configuration files from /etc/netplan/*.yaml
  <strong>info</strong>   - Show current netplan version and available features
  <strong>ip</strong>     - Retrieve IP information from the system
  <strong>try</strong>    - Try to apply a new netplan config to running system, with automatic rollback
</pre>
</details><br>

Task list:
- Create dummy interface with 'ip' utility
- Assign address 192.168.50.12/24 to it and default gw 192.168.50.1/24

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ ip link add dummy0 type dummy
  $ sudo ip link set dummy0 up
<br>
<strong>Task 2:</strong>
  $ vi /etc/netplan/10-dummy0.yaml
    network:
      version: 2
      ethernets:
        dummy0:
          addresses:
          - 192.168.50.12/24
          nameservers:
            search: [mydomain.local]
            addresses: [192.168.50.1]
          routes:
          - to: default
            via: 192.168.50.1
  $ sudo netplan generate
  $ cat /run/systemd/network/10-netplan-dummy0.network
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
