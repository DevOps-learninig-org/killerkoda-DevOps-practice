First of all - useful links:

- [snia.org - Common RAID Disk Data Format Specification](https://www.snia.org/sites/default/files/SNIA_DDF_Technical_Position_v2.0.pdf)
- [wikipedia.org - Standard RAID levels](https://en.wikipedia.org/wiki/Standard_RAID_levels)
- [redhat.com - Managing RAID](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/9/html/managing_storage_devices/managing-raid_managing-storage-devices)
- [tldp.org - The Software-RAID HOWTO](https://tldp.org/HOWTO/html_single/Software-RAID-HOWTO/)
- [archlinux.org - RAID](https://wiki.archlinux.org/title/RAID)
- [kernel.org - Linux Raid](https://raid.wiki.kernel.org/index.php/Linux_Raid)
- [kernel.org - A guide to mdadm](https://raid.wiki.kernel.org/index.php/A_guide_to_mdadm)
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
<details><summary>Key features of the Linux software RAID stack</summary>
<pre>
  - Multithreaded design
  - Portability of arrays between Linux machines without reconstruction
  - Backgrounded array reconstruction using idle system resources
  - Hot-swap drive support
  - Automatic CPU detection to take advantage of certain CPU features such as streaming Single Instruction Multiple Data (SIMD) support.
  - Automatic correction of bad sectors on disks in an array.
  - Regular consistency checks of RAID data to ensure the health of the array.
  - Proactive monitoring of arrays with email alerts sent to a designated email address on important events.
  - Write-intent bitmaps, which drastically increase the speed of resync events by allowing the kernel to know precisely which portions of a disk need to be resynced instead of having to resync the entire array after a system crash.
</pre>
</details>
<details><summary>MDADM modes</summary>
<pre>
  <strong>Assemble</strong> - Assemble  the  components  of a previously created array into an active array.
  <strong>Build</strong>    - Build an array that doesn't have per-device metadata (superblocks). 
  <strong>Create</strong>   - Create a new array with per-device metadata (superblocks).
  <strong>Follow or Monitor</strong> - Monitor one or more md devices and act on any state changes.
  <strong>Grow</strong>     - Grow (or shrink) an array, or otherwise reshape it in some way.
  <strong>Incremental Assembly</strong> - Add  a  single device to an appropriate array.
  <strong>Manage</strong>   - This is for doing things to specific components of an array such as adding new spares and removing faulty devices.
  <strong>Misc</strong>     - This  is an 'everything else' mode that supports operations on active arrays, operations on component devices such as erasing old superblocks, operations.
  <strong>Auto-detect</strong> - This mode does not act on a specific device or array, but rather it requests the Linux Kernel to activate any auto-detected arrays.
</pre>
</details>
<br>

Task list:
- Create RAID5 array from 3 devices with DDF metadata
- Make 1 of disks faulty and remove it
- Repair RAID5 array

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ dd if=/dev/zero bs=1M count=256 | tee raid{1..3}
  $ sudo losetup -Pf raid1
  $ sudo losetup -Pf raid2
  $ sudo losetup -Pf raid3
  $ losetup
  <br>
  $ sudo mdadm --create /dev/md/ddf1 --metadata=ddf --raid-disks=3 /dev/loop{0..2}
  $ sudo mdadm --create /dev/md0 --level=5 -n3 /dev/md/ddf1
  <br>
  $ sudo mdadm --detail /dev/md/ddf1 
  $ sudo mdadm --detail /dev/md0
<br>
<strong>Task 2:</strong>
  $ sudo mdadm --manage /dev/md0 --fail /dev/loop0
  $ sudo mdadm --manage /dev/md/ddf1 --remove /dev/loop0
  $ sudo mdadm --detail /dev/md0
<br>
<strong>Task 3:</strong>
  $ sudo mdadm --manage /dev/md/ddf1 --add /dev/loop0
  $ sudo mdadm --detail /dev/md0
  <br>
  $ sudo mdadm --stop /dev/md0
  $ sudo mdadm --stop /dev/md/ddf1
  $ sudo losetup -D
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
