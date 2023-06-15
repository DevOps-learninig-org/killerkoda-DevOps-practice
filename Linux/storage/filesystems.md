First of all - useful links:

- [kernel.org - Overview of the Linux Virtual File System](https://www.kernel.org/doc/html/next/filesystems/vfs.html)
- [tldp.org - The File system](https://tldp.org/LDP/tlk/fs/filesystem.html)
- [kernel.org - FS tree of kernel](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/fs)
- [kernel.org - ext4 Filesystem](https://www.kernel.org/doc/html/v4.19/filesystems/ext4/index.html)
- `man ext4`{{exec}}
- [readthedocs.io - BTRFS documentation](https://btrfs.readthedocs.io/en/latest/)
- [kernel.org - BTRFS](https://docs.kernel.org/filesystems/btrfs.html)
- [github.io - OpenZFS Documentation](https://openzfs.org/wiki/Documentation)
- `man fs`{{exec}}
- `man fstab`{{exec}}
- `man mount`{{exec}}
- [youtube.com - Linux Internals: Virtual File System (VFS)](https://www.youtube.com/watch?v=J4qWNNISdJk)
- [youtube.com - ZFS on Linux the Billion dollar file system](https://www.youtube.com/watch?v=n0Uskl9fcKI)
- [youtube.com - Best Filesystem of 2023](https://www.youtube.com/watch?v=O9QZVzq-rX4)
<br>
<details><summary>/etc/fstab</summary>
<pre>
  /etc/fstab - static information about the filesystems<br>
  &lt;device-spec&gt; &lt;mount-point&gt; &lt;fs-type&gt; &lt;options&gt; &lt;dump&gt; &lt;pass&gt;<br>
  <strong>device-spec</strong> – The device name, label, UUID, or other means of specifying the partition or data source this entry refers to.
  <strong>mount-point</strong> – Where the contents of the device may be accessed after mounting; for swap partitions or files, this is set to none.
  <strong>fs-type</strong> – The type of file system to be mounted.
  <strong>options</strong> – Options describing various other aspects of the file system.
  <strong>dump</strong> – A number indicating whether and how often the file system should be backed up by the dump program; a zero indicates the file system will never be automatically backed up.
  <strong>pass</strong> – A number indicating the order in which the fsck program will check the devices for errors at boot time
</pre>
</details>
<details><summary>/etc/fstab fs options</summary>
<pre>
  <strong>auto / noauto</strong> - device will be mounted automatically at bootup or when the mount -a command is issued.
  <strong>dev / nodev</strong> - controls behavior of the interpretation of block special devices on the filesystem.
  <strong>exec / noexec</strong> - lets binaries that are on the partition be executed, whereas noexec is the opposite.
  <strong>rw / ro</strong> - mount the filesystem in either read write or read only mode.
  <strong>sync / async</strong> - how the input and output to the filesystem should be done.
  <strong>suid / nosuid</strong> - controls the behavior of the operation of suid, and sgid bits.
  <strong>user / users / nouser</strong> - permits any user to mount the filesystem.
  <strong>defaults</strong> - use default settings. For ext3 file systems is equivalent to rw,suid,dev,exec,auto,nouser,async.
  <strong>owner (Linux-specific)</strong> - permit the owner of device to mount.
  <strong>atime / noatime / relatime / strictatime (Linux-specific)</strong> - The Unix stat structure records when files are last accessed (atime), modified (mtime), and changed (ctime).
</pre>
</details>
<br>

Task list:
- Create file of 512Mb size filled by zeroes
- Format this file with one of filesystems
- Mount it to ~/mnt/ and write some files

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1 - 2:</strong>
  $ dd if=/dev/zero of=myffs bs=1M count=512
  $ MYFFS=$(losetup --find --show myffs)
  $ mkfs.ext4 ${MYFFS}
<br>
<strong>Task 2:</strong>
  $ mkdir ~/mnt/
  $ mount ${MYFFS} ~/mnt/
  $ touch ~/mnt/test
  $ umount ~/mnt/
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
