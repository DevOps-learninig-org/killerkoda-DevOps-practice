First of all - useful links:

- [snia.org - Common RAID Disk Data Format Specification](https://www.snia.org/sites/default/files/SNIA_DDF_Technical_Position_v2.0.pdf)
- [wikipedia.org - Standard RAID levels](https://en.wikipedia.org/wiki/Standard_RAID_levels)
- [redhat.com - Managing RAID](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/9/html/managing_storage_devices/managing-raid_managing-storage-devices)
- [tldp.org - The Software-RAID HOWTO](https://tldp.org/HOWTO/html_single/Software-RAID-HOWTO/)
- [archlinux.org - RAID](https://wiki.archlinux.org/title/RAID)
- [kernel.org - Linux Raid](https://raid.wiki.kernel.org/index.php/Linux_Raid)
- `man mdadm`{{exec}}
<br>
<details><summary>Primary RAID Levels</summary>
<pre>
  <strong>RAID-0</strong> - Striped array with no parity
  <strong>RAID-1</strong> - Mirrored array
  <strong>RAID-3</strong> - Striped array with non-rotating parity, optimized for long, singlethreaded transfers
  <strong>RAID-4</strong> - Striped array with non-rotating parity, optimized for short, multithreaded transfers
  <strong>RAID-5</strong> - Striped array with rotating parity, optimized for short, multi-threaded transfers
  <strong>RAID-6</strong> - Similar to RAID-5, but with dual rotating parity physical disks, tolerating two physical disk failures
  <br>
  <strong>MDF RAID</strong> - Multi disk Failure RAID. Similar to RAID-6, but supporting more than two physical disk failures
  <strong>RAID-1E</strong> - >2 disk RAID-1, similar to RAID-10 but with striping integrated intoarray=
  <strong>Concatenation</strong> - Physical disks combined head to tail
  <strong>RAID-5E</strong> - RAID-5 with hot space at end each extent
  <strong>RAID-5EE</strong> - RAID-5 with hot space integrated into each extent
  <strong>RAID-5R</strong> - RAID-5 with parity rotated after a configured number of stripes 
</pre>
</details>
<details><summary>Primary RAID LevelsRAID Level Qualifiers</summary>
<pre>
  <strong></strong> -
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
