First of all - useful links:

- [kernel.org - Overview of the Linux Virtual File System](https://www.kernel.org/doc/html/next/filesystems/vfs.html)
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
<details><summary>Lesson info and tips</summary>
<pre>
  <strong></strong> -
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
  $ mkfs.ext4 myffs
<br>
<strong>Task 2:</strong>
  $ mkdir ~/mnt/
  $ mount -o loop myffs ~/mnt/
  $ touch ~/mnt/test
  $ umount ~/mnt/
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
