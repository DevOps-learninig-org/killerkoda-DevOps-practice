First of all - useful links:
- [linuxfoundation.org - Filesystem Hierarchy Standard](https://refspecs.linuxfoundation.org/fhs.shtml)

Manual pages:
- `man pwd`{{exec}}
- `man ls`{{exec}}
- `man hier`{{exec}}
- `man file-hierarchy`{{exec}}
- `apt install tree -y && man tree`{{exec}}
<br>
<details><summary>Filesystem Hierarchy as in FHS v3.0</summary>
<pre>
  <strong>/bin</strong>   - Essential user command binaries (for use by all users)
  <strong>/boot</strong>  - Static files of the boot loader
  <strong>/dev</strong>   - Device files
  <strong>/etc</strong>   - Host-specific system configuration
  <strong>/home</strong>  - User home directories (optional)
  <strong>/lib</strong>   - Essential shared libraries and kernel modules
  <strong>/media</strong> - Mount point for removable media
  <strong>/mnt</strong>   - Mount point for a temporarily mounted filesystem
  <strong>/opt</strong>   - Add-on application software packages
  <strong>/root</strong>  - Home directory for the root user (optional)
  <strong>/run</strong>   - Run-time variable data
  <strong>/sbin</strong>  - System binaries
  <strong>/srv</strong>   - Data for services provided by this system
  <strong>/tmp</strong>   - Temporary files
</pre>
</details><br>

Task list:
- Read manual pages for 'pwd' and 'ls'
- Install 'tree' utility
- Explore fs with 'tree'

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ man pwd
  $ man ls
<br>
<strong>Task 2:</strong>
  $ sudo apt install tree
  $ tree -a /
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
