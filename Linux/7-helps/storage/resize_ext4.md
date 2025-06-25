How to Resize an ext4 Partition on /dev/sda2 After Expanding a Virtual Disk in a VM

If you’ve expanded a virtual disk in a VM and need to extend the ext4 partition (/dev/sda2), follow these steps:
1. Verify That the Physical Disk Has Been Expanded

    Check if the virtual disk was successfully enlarged:
    bash

    lsblk

    Look at the size of sda (the parent device).

2. Resize the Partition /dev/sda2

    Use growpart (from the cloud-utils package):
    bash

growpart /dev/sda 2

Note: Specify the disk (/dev/sda) and partition number (2) separately.

If growpart is not available, use parted:
bash

    parted /dev/sda resizepart 2 100%

    Confirm with Yes if prompted.

3. Update the Partition Table

    Reread the partition table without rebooting:
    bash

    partprobe /dev/sda

4. Expand the ext4 Filesystem

    Use resize2fs to resize the filesystem:
    bash

    resize2fs /dev/sda2

    (Works even if the filesystem is mounted on modern systems.)

5. Verify the Changes

    Confirm that the partition and filesystem now use all available space:
    bash

    df -h /dev/sda2
    lsblk

Important Notes:

    If /dev/sda2 is not the last partition on the disk, resizing it may require moving subsequent partitions (which is more complex and risky).

    For LVM/RAID, different steps apply (you’d need to extend PV, VG, and LV).

    If resize2fs fails, check the filesystem first:
    bash

    e2fsck -f /dev/sda2

These commands are generally safe to run on a mounted filesystem (if supported by your OS version). For maximum safety, you could boot from a LiveCD, but this is usually unnecessary.
