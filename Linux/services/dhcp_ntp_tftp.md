First of all - useful links:

- [readthedocs.io - Kea Administrator Reference Manual](https://kea.readthedocs.io/en/latest/)
- [isc.org - Kea DHCP](https://www.isc.org/kea/)
- [ntpsec.org - Network Time Protocol (NTP) Daemon](https://docs.ntpsec.org/latest/ntpd.html)
- [redhat.com - Configuring NTP Using ntpd](https://access.redhat.com/documentation/ru-ru/red_hat_enterprise_linux/7/html/system_administrators_guide/ch-configuring_ntp_using_ntpd)
- [github.com - NetKit TFTPd](https://github.com/ClausKlein/netkit-tftp)
- `man xinetd`{{exec}}
- `man systemd-timesyncd`{{exec}}
<br>
<details><summary>Kea Software</summary>
<pre>
  <strong>keactrl</strong>    — This tool starts, stops, reconfigures, and reports the status of the Kea servers.
  <strong>kea-dhcp4</strong>  — The DHCPv4 server process. This process responds to DHCPv4 queries from clients.
  <strong>kea-dhcp6</strong>  — The DHCPv6 server process. This process responds to DHCPv6 queries from clients.
  <strong>kea-dhcp-ddns</strong> — The DHCP Dynamic DNS process. This process acts as an intermediary between the DHCP servers and external DNS servers.
  <strong>kea-admin</strong>  — This is a useful tool for database backend maintenance (creating a new database, checking versions, upgrading, etc.).
  <strong>kea-lfc</strong>    — This process removes redundant information from the files used to provide persistent storage for the memfile database backend.
  <strong>kea-ctrl-agent</strong> — The Kea Control Agent (CA) is a daemon that exposes a RESTful control interface for managing Kea servers.
  <strong>kea-netconf</strong>  — kea-netconf is an agent that provides a YANG/NETCONF interface for configuring Kea.
  <strong>kea-shell</strong>    — This simple text client uses the REST interface to connect to the Kea Control Agent.
  <strong>perfdhcp</strong>     — This is a DHCP benchmarking tool which simulates multiple clients to test both DHCPv4 and DHCPv6 server performance.
</pre>
</details>
<details><summary>NTPd manual pages</summary>
<pre>
  <strong>ntp.conf(5)</strong>  - ntpd Configuration File
  <strong>ntp.keys(5)</strong>  - NTP symmetric key file format
  <strong>ntpd(8)</strong>      - Network Time Protocol (NTP) daemon
  <strong>ntpdig(1)</strong>    - Simple Network Time Protocol (SNTP) client
  <strong>ntpfrob(8)</strong>   - frob the local clock hardware
  <strong>ntpkeygen(8)</strong> - generate public and private keys
  <strong>ntpleapfetch(8)</strong> - fetch and manage leap-offset file
  <strong>ntploggps(1)</strong>   - log gpsd data for use by ntpviz
  <strong>ntplogtemp(1)</strong>  - log system temperature data for use by ntpviz
  <strong>ntpmon(1)</strong>      - real-time NTP status monitor
  <strong>ntpq(1)</strong>      - standard NTP query program
  <strong>ntpsnmp(1)</strong>   - an AgentX Simple Network Management Protocol sub-agent [experimental]
  <strong>ntpsweep(1)</strong>  - print information about given NTP servers
  <strong>ntptime(8)</strong>   - read and set kernel time variables
  <strong>ntptrace(1)</strong>  - trace a chain of NTP servers back to the primary source
  <strong>ntpviz(1)</strong>    - make offset, jitter, and other plots from logfiles
  <strong>ntpwait(8)</strong>   - wait until ntpd is in synchronized state
</pre>
</details>
<br>

Task list:
- Configure 'tftp' server on your system
- Configure 'ntp' server
- Install and configure 'dhcp' server with 042 and 252 options set

<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
