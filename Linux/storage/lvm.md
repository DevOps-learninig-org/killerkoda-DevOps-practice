First of all - useful links:

- [redhat.com - Configuring and managing logical volumes](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/9/html/configuring_and_managing_logical_volumes/index)
- [tldp.org - LVM HOWTO](https://tldp.org/HOWTO/LVM-HOWTO/)
- [debian.org - LVM](https://wiki.debian.org/LVM)
- [suse.com - LVM Configuration](https://documentation.suse.com/sles/15-SP1/html/SLES-all/cha-lvm.html)
- [archlinux.org - LVM](https://wiki.archlinux.org/title/LVM)

Manual pages:
- `man lvm`{{exec}}
<br>
<details><summary>lvm2 built-in commands</summary>
<pre>
The following commands are built into lvm without links<br>
  <strong>config</strong>        The same as lvmconfig(8) below.
  <strong>devtypes</strong>      Display the recognised built-in block device types.
  <strong>dumpconfig</strong>    The same as lvmconfig(8) below.
  <strong>formats</strong>       Display recognised metadata formats.
  <strong>fullreport</strong>    Report  information  about  PVs,  PV segments, VGs, LVs and LV segments, all at once.
  <strong>help</strong>          Display the help text.
  <strong>lastlog</strong>       Display log report of last command run in LVM shell if command log reporting is enabled.
  <strong>lvpoll</strong>        Complete lvmpolld operations (Internal command).
  <strong>segtypes</strong>      Display recognised Logical Volume segment types.
  <strong>systemid</strong>      Display any system ID currently set on this host.
  <strong>tags</strong>          Display any tags defined on this host.
  <strong>version</strong>       Display version information.
</pre>
</details>
<details><summary>lvm2 commands</summary>
<pre>
  <strong>pvchange</strong>      Change attributes of a Physical Volume.
  <strong>pvck</strong>          Check Physical Volume metadata.
  <strong>pvcreate</strong>      Initialize a disk or partition for use by LVM.
  <strong>pvdisplay</strong>     Display attributes of a Physical Volume.
  <strong>pvmove</strong>        Move Physical Extents.
  <strong>pvremove</strong>      Remove a Physical Volume.
  <strong>pvresize</strong>      Resize a disk or partition in use by LVM2.
  <strong>pvs</strong>           Report information about Physical Volumes.
  <strong>pvscan</strong>        Scan all disks for Physical Volumes.<br>
  <strong>vgcfgbackup</strong>   Backup Volume Group descriptor area.
  <strong>vgcfgrestore</strong>  Restore Volume Group descriptor area.
  <strong>vgchange</strong>      Change attributes of a Volume Group.
  <strong>vgck</strong>          Check Volume Group metadata.
  <strong>vgconvert</strong>     Convert Volume Group metadata format.
  <strong>vgcreate</strong>      Create a Volume Group.
  <strong>vgdisplay</strong>     Display attributes of Volume Groups.
  <strong>vgexport</strong>      Make volume Groups unknown to the system.
  <strong>vgextend</strong>      Add Physical Volumes to a Volume Group.
  <strong>vgimport</strong>      Make exported Volume Groups known to the system.
  <strong>vgimportclone</strong> Import  and  rename  duplicated  Volume Group (e.g. a hardware snapshot).
  <strong>vgmerge</strong>       Merge two Volume Groups.
  <strong>vgmknodes</strong>     Recreate Volume Group directory  and  Logical  Volume  specialfiles
  <strong>vgreduce</strong>      Reduce  a  Volume  Group by removing one or more Physical Volumes.
  <strong>vgremove</strong>      Remove a Volume Group.
  <strong>vgrename</strong>      Rename a Volume Group.
  <strong>vgs</strong>           Report information about Volume Groups.
  <strong>vgscan</strong>        Scan all disks for Volume Groups and rebuild caches.
  <strong>vgsplit</strong>       Split a Volume Group into two, moving any logical volumes from one Volume Group to another by moving entire Physical Volumes.<br>
  <strong>lvchange</strong>      Change attributes of a Logical Volume.
  <strong>lvconvert</strong>     Convert a Logical Volume from linear to mirror or snapshot.
  <strong>lvcreate</strong>      Create a Logical Volume in an existing Volume Group.
  <strong>lvdisplay</strong>     Display attributes of a Logical Volume.
  <strong>lvextend</strong>      Extend the size of a Logical Volume.
  <strong>lvmconfig</strong>     Display    the   configuration   information   after   loading lvm.conf(5) and any other configuration files.
  <strong>lvmdiskscan</strong>   Scan for all devices visible to LVM2.
  <strong>lvmdump</strong>       Create lvm2 information dumps for diagnostic purposes.
  <strong>lvreduce</strong>      Reduce the size of a Logical Volume.
  <strong>lvremove</strong>      Remove a Logical Volume.
  <strong>lvrename</strong>      Rename a Logical Volume.
  <strong>lvresize</strong>      Resize a Logical Volume.
  <strong>lvs</strong>           Report information about Logical Volumes.
  <strong>lvscan</strong>        Scan (all disks) for Logical Volumes.
</pre>
</details>
<br>

Task list:
- Create 3 loopback devices 256Mb each
- Create 'testvg' lvm2 volume group from this devices
- Create 'testlv1' and 'testlv2' lvm2 logical volumes belongs 'testvg'
- Format 'testlv1' with EXT4 and 'testlv1' with BTRFS
- Delete all created instances

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ dd if=/dev/zero bs=1M count=256 | tee ld{0..2}
  $ losetup -Pf ld0
  $ losetup -Pf ld1
  $ losetup -Pf ld2
  $ losetup<br>
<strong>Task 2:</strong>
  $ lvm vgcreate testvg /dev/loop0 /dev/loop1 /dev/loop2
  $ lvm pvscan
  $ lvm vgs<br>
<strong>Task 3:</strong>  
  $ lvm lvcreate -n testlv1 -L 300M testvg
  $ lvm lvs
  $ lvm vgs<br>
<strong>Task 4:</strong>
  $ mkfs.ext4 /dev/testvg/testlv1
  $ mkfs.btrfs /dev/testvg/testlv2<br>
<strong>Task 5:</strong>
  $ lvm lvremove testvg/testlv1
  $ lvm lvremove testvg/testlv2
  $ lvm vgremove testvg
  $ lvm pvremove /dev/loop0 /dev/loop1 /dev/loop2
  $ losetup -D
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
