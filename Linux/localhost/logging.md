First of all - useful links:

- [rsyslog.com - The rocket-fast Syslog Server](https://www.rsyslog.com/)
- `man systemd-journald.service`{{exec}}
- [ubuntu.com - Linux Log Files](https://help.ubuntu.com/community/LinuxLogFiles#System_Log)
- [opensuse.org - Query the systemd journal](https://doc.opensuse.org/documentation/leap/reference/html/book-reference/cha-journalctl.html)
- [fedoraproject.org - Viewing and Managing Log Files](https://docs.fedoraproject.org/en-US/fedora/latest/system-administrators-guide/monitoring-and-automation/Viewing_and_Managing_Log_Files/)
- [debian-handbook.info - syslog System Events](https://debian-handbook.info/browse/stable/sect.syslog.html)
- `man rsyslog.conf`{{exec}}
- `man logger`{{exec}}

Handy stuff:

- Log collectors: [rsyslog](https://www.rsyslog.com/), [Filebeat](https://www.elastic.co/beats/filebeat), [Fluentd](https://www.fluentd.org/)
- Log processing: [Logstash](https://www.elastic.co/logstash/), [Graylog](https://www.graylog.org/), [Splunk](https://www.splunk.com/)
- Log storage: [ElasticSearch](https://www.elastic.co/), [InfluxDB](https://www.influxdata.com/)
- Log visualizer: [Kibana](https://www.elastic.co/kibana/), [Grafana](https://grafana.com/)

Task list:
- Write message "Hello World directly to journald log"
- Show latest journald records since 1 minute
- Show total disk usage by journald logs
- Clear journald logs? but save last year

<details><summary>Hints for the task</summary>
<pre>
  $ systemd-cat echo "Hello World!"
  $ journalctl --since "1 minute ago"
  $ journalctl --disk-usage
  $ journalctl --vacuum-time=1years
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
