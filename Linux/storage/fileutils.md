First of all - useful links:

- `man mount`{{exec}}
- `man fsck`{{exec}}
- [gnu.org - Parted User’s Manual](https://www.gnu.org/software/parted/manual/parted.html)
- `man parted`{{exec}}
- `man fdisk`{{exec}}
<br>
<details><summary>Util-linux filesystem tools</summary>
<pre>
  <strong>addpart</strong>    - tell the kernel about the existence of a partition.
  <strong>blkdiscard</strong> - discard sectors on a device
  <strong>blkid</strong>      - locate/print block device attributes
  <strong>blkzone</strong>    - run zone command on a device
  <strong>blockdev</strong>   - call block device ioctls from the command line
  <strong>cfdisk</strong>     - display or manipulate a disk partition table
  <strong>delpart</strong>    - tell the kernel to forget about a partition
  <strong>fdisk</strong>      - manipulate disk partition table
  <strong>findfs</strong>     - find a filesystem by label or UUID
  <strong>findmnt</strong>    - display information about mounted filesystems
  <strong>fsck</strong>       - check and repair a Linux filesystem
  <strong>fsfreeze</strong>   - suspend access to a filesystem (Ext3/4, ReiserFS, JFS, XFS)
  <strong>fstrim</strong>     - discard unused blocks on a mounted filesystem
  <strong>isosize</strong>    - output the length of an iso9660 filesystem
  <strong>losetup</strong>    - set up and control loop devices
  <strong>lsblk</strong>      - list block devices
  <strong>lsfd | lsof</strong> - list open files
  <strong>lslocks</strong>    - list local system locks
  <strong>lsns</strong>       - list namespaces
  <strong>mkfs</strong>       - build a Linux filesystem
  <strong>mkswap</strong>     - set up a Linux swap area
  <strong>mount</strong>      - mount a filesystem
  <strong>umount</strong>     - unmount file systems
  <strong>raw</strong>        - bind a Linux raw character device
  <strong>resizepart</strong> - tell the kernel about the new size of a partition
  <strong>sfdisk</strong>     - display or manipulate a disk partition table
  <strong>swaplabel</strong>  - print or change the label or UUID of a swap area
  <strong>swapon, swapoff</strong> - enable/disable devices and files for paging and swapping
  <strong>wipefs</strong>     - wipe a signature from a device
</pre>
</details>
<details><summary>Coreutils filesystem tools</summary>
<pre>
  <strong>df</strong>       - report file system disk space usage
  <strong>du</strong>       - estimate file space usage
  <strong>stat</strong>     - display file or file system status
  <strong>sync</strong>     - synchronize cached writes to persistent storage
  <strong>truncate</strong> - shrink or extend the size of a file to the specified size
</pre>
</details>
<details><summary>Filesystem monitoring tools</summary>
<pre>
  <strong>iwatch<strong> - realtime filesystem monitoring program using inotify
  <strong>iostat<strong> - input/output statistics for devices and partitions
  <strong>iotop<strong>  - simple top-like I/O monitor
</pre>
</details>
<br>

Task list:
- Create loopback device with size of 512Mb
- Make GPT partition table on it
- Create 2 partitions and mount them into different folders

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ dd if=/dev/zero of=myffs bs=1M count=512
  $ MYFFS=$(losetup --find --show myffs)
<br>
<strong>Task 2:</strong>
  $ parted ${MYFFS} mktable gpt
<br>
<strong>Task 3:</strong>
  $ parted ${MYFFS} -- mkpart primary ext4 12MiB 252MiB
  $ parted ${MYFFS} -- mkpart primary btrfs 252MiB -34s
  $ parted ${MYFFS} -- print
  $ mkfs.ext4 ${MYFFS}p1
  $ mkfs.btrfs ${MYFFS}p2
  $ fsck ${MYFFS}p1
  $ btrfsck ${MYFFS}p2
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
