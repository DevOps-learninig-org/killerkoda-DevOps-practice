#--------------------------------------------------------------------------------CAT
ubuntu:~$ cat /proc/version
Linux version 6.8.0-51-generic (buildd@lcy02-amd64-091) (x86_64-linux-gnu-gcc-13 (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0, GNU ld (GNU Binutils for Ubuntu) 2.42) #52-Ubuntu SMP PREEMPT_DYNAMIC Thu Dec  5 13:09:44 UTC 2024

ubuntu:~$ cat --help
Usage: cat [OPTION]... [FILE]...
Concatenate FILE(s) to standard output.

With no FILE, or when FILE is -, read standard input.

  -A, --show-all           equivalent to -vET
  -b, --number-nonblank    number nonempty output lines, overrides -n
  -e                       equivalent to -vE
  -E, --show-ends          display $ at end of each line
  -n, --number             number all output lines
  -s, --squeeze-blank      suppress repeated empty output lines
  -t                       equivalent to -vT
  -T, --show-tabs          display TAB characters as ^I
  -u                       (ignored)
  -v, --show-nonprinting   use ^ and M- notation, except for LFD and TAB
      --help        display this help and exit
      --version     output version information and exit

Examples:
  cat f - g  Output f's contents, then standard input, then g's contents.
  cat        Copy standard input to standard output.

GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
Report any translation bugs to <https://translationproject.org/team/>
Full documentation <https://www.gnu.org/software/coreutils/cat>
or available locally via: info '(coreutils) cat invocation'

#------------------------------------------------------------------------------FIND
ubuntu:~$ find --version
find (GNU findutils) 4.9.0

ubuntu:~$ find --help
Usage: find [-H] [-L] [-P] [-Olevel] [-D debugopts] [path...] [expression]

Default path is the current directory; default expression is -print.
Expression may consist of: operators, options, tests, and actions.

Operators (decreasing precedence; -and is implicit where no others are given):
      ( EXPR )   ! EXPR   -not EXPR   EXPR1 -a EXPR2   EXPR1 -and EXPR2
      EXPR1 -o EXPR2   EXPR1 -or EXPR2   EXPR1 , EXPR2

Positional options (always true):
      -daystart -follow -nowarn -regextype -warn

Normal options (always true, specified before other expressions):
      -depth -files0-from FILE -maxdepth LEVELS -mindepth LEVELS
       -mount -noleaf -xdev -ignore_readdir_race -noignore_readdir_race

Tests (N can be +N or -N or N):
      -amin N -anewer FILE -atime N -cmin N -cnewer FILE -context CONTEXT
      -ctime N -empty -false -fstype TYPE -gid N -group NAME -ilname PATTERN
      -iname PATTERN -inum N -iwholename PATTERN -iregex PATTERN
      -links N -lname PATTERN -mmin N -mtime N -name PATTERN -newer FILE
      -nouser -nogroup -path PATTERN -perm [-/]MODE -regex PATTERN
      -readable -writable -executable
      -wholename PATTERN -size N[bcwkMG] -true -type [bcdpflsD] -uid N
      -used N -user NAME -xtype [bcdpfls]

Actions:
      -delete -print0 -printf FORMAT -fprintf FILE FORMAT -print 
      -fprint0 FILE -fprint FILE -ls -fls FILE -prune -quit
      -exec COMMAND ; -exec COMMAND {} + -ok COMMAND ;
      -execdir COMMAND ; -execdir COMMAND {} + -okdir COMMAND ;

Other common options:
      --help                   display this help and exit
      --version                output version information and exit

Valid arguments for -D:
exec, opt, rates, search, stat, time, tree, all, help
Use '-D help' for a description of the options, or see find(1)

Please see also the documentation at https://www.gnu.org/software/findutils/.
You can report (and track progress on fixing) bugs in the "find"
program via the GNU findutils bug-reporting page at
https://savannah.gnu.org/bugs/?group=findutils or, if
you have no web access, by sending email to <bug-findutils@gnu.org>.

#--------------------------------------------------------------------------------LS
ubuntu:~$ ls --version
ls (GNU coreutils) 9.4

ubuntu:~$ ls --help
Usage: ls [OPTION]... [FILE]...
List information about the FILEs (the current directory by default).
Sort entries alphabetically if none of -cftuvSUX nor --sort is specified.

Mandatory arguments to long options are mandatory for short options too.
  -a, --all                  do not ignore entries starting with .
  -A, --almost-all           do not list implied . and ..
      --author               with -l, print the author of each file
  -b, --escape               print C-style escapes for nongraphic characters
      --block-size=SIZE      with -l, scale sizes by SIZE when printing them;
                             e.g., '--block-size=M'; see SIZE format below

  -B, --ignore-backups       do not list implied entries ending with ~
  -c                         with -lt: sort by, and show, ctime (time of last
                             change of file status information);
                             with -l: show ctime and sort by name;
                             otherwise: sort by ctime, newest first

  -C                         list entries by columns
      --color[=WHEN]         color the output WHEN; more info below
  -d, --directory            list directories themselves, not their contents
  -D, --dired                generate output designed for Emacs' dired mode
  -f                         list all entries in directory order
  -F, --classify[=WHEN]      append indicator (one of */=>@|) to entries WHEN
      --file-type            likewise, except do not append '*'
      --format=WORD          across -x, commas -m, horizontal -x, long -l,
                             single-column -1, verbose -l, vertical -C

      --full-time            like -l --time-style=full-iso
  -g                         like -l, but do not list owner
      --group-directories-first
                             group directories before files;
                             can be augmented with a --sort option, but any
                             use of --sort=none (-U) disables grouping

  -G, --no-group             in a long listing, don't print group names
  -h, --human-readable       with -l and -s, print sizes like 1K 234M 2G etc.
      --si                   likewise, but use powers of 1000 not 1024
  -H, --dereference-command-line
                             follow symbolic links listed on the command line
      --dereference-command-line-symlink-to-dir
                             follow each command line symbolic link
                             that points to a directory

      --hide=PATTERN         do not list implied entries matching shell PATTERN
                             (overridden by -a or -A)

      --hyperlink[=WHEN]     hyperlink file names WHEN
      --indicator-style=WORD
                             append indicator with style WORD to entry names:
                             none (default), slash (-p),
                             file-type (--file-type), classify (-F)

  -i, --inode                print the index number of each file
  -I, --ignore=PATTERN       do not list implied entries matching shell PATTERN
  -k, --kibibytes            default to 1024-byte blocks for file system usage;
                             used only with -s and per directory totals

  -l                         use a long listing format
  -L, --dereference          when showing file information for a symbolic
                             link, show information for the file the link
                             references rather than for the link itself

  -m                         fill width with a comma separated list of entries
  -n, --numeric-uid-gid      like -l, but list numeric user and group IDs
  -N, --literal              print entry names without quoting
  -o                         like -l, but do not list group information
  -p, --indicator-style=slash
                             append / indicator to directories
  -q, --hide-control-chars   print ? instead of nongraphic characters
      --show-control-chars   show nongraphic characters as-is (the default,
                             unless program is 'ls' and output is a terminal)

  -Q, --quote-name           enclose entry names in double quotes
      --quoting-style=WORD   use quoting style WORD for entry names:
                             literal, locale, shell, shell-always,
                             shell-escape, shell-escape-always, c, escape
                             (overrides QUOTING_STYLE environment variable)

  -r, --reverse              reverse order while sorting
  -R, --recursive            list subdirectories recursively
  -s, --size                 print the allocated size of each file, in blocks
  -S                         sort by file size, largest first
      --sort=WORD            sort by WORD instead of name: none (-U), size (-S),
                             time (-t), version (-v), extension (-X), width

      --time=WORD            select which timestamp used to display or sort;
                               access time (-u): atime, access, use;
                               metadata change time (-c): ctime, status;
                               modified time (default): mtime, modification;
                               birth time: birth, creation;
                             with -l, WORD determines which time to show;
                             with --sort=time, sort by WORD (newest first)

      --time-style=TIME_STYLE
                             time/date format with -l; see TIME_STYLE below
  -t                         sort by time, newest first; see --time
  -T, --tabsize=COLS         assume tab stops at each COLS instead of 8
  -u                         with -lt: sort by, and show, access time;
                             with -l: show access time and sort by name;
                             otherwise: sort by access time, newest first

  -U                         do not sort; list entries in directory order
  -v                         natural sort of (version) numbers within text
  -w, --width=COLS           set output width to COLS.  0 means no limit
  -x                         list entries by lines instead of by columns
  -X                         sort alphabetically by entry extension
  -Z, --context              print any security context of each file
      --zero                 end each output line with NUL, not newline
  -1                         list one file per line
      --help        display this help and exit
      --version     output version information and exit

The SIZE argument is an integer and optional unit (example: 10K is 10*1024).
Units are K,M,G,T,P,E,Z,Y,R,Q (powers of 1024) or KB,MB,... (powers of 1000).
Binary prefixes can be used, too: KiB=K, MiB=M, and so on.

The TIME_STYLE argument can be full-iso, long-iso, iso, locale, or +FORMAT.
FORMAT is interpreted like in date(1).  If FORMAT is FORMAT1<newline>FORMAT2,
then FORMAT1 applies to non-recent files and FORMAT2 to recent files.
TIME_STYLE prefixed with 'posix-' takes effect only outside the POSIX locale.
Also the TIME_STYLE environment variable sets the default style to use.

The WHEN argument defaults to 'always' and can also be 'auto' or 'never'.

Using color to distinguish file types is disabled both by default and
with --color=never.  With --color=auto, ls emits color codes only when
standard output is connected to a terminal.  The LS_COLORS environment
variable can change the settings.  Use the dircolors(1) command to set it.

Exit status:
 0  if OK,
 1  if minor problems (e.g., cannot access subdirectory),
 2  if serious trouble (e.g., cannot access command-line argument).

GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
Report any translation bugs to <https://translationproject.org/team/>
Full documentation <https://www.gnu.org/software/coreutils/ls>
or available locally via: info '(coreutils) ls invocation'

#--------------------------------------------------------------------------------LSHW
ubuntu:~$ lshw --help
Hardware Lister (lshw) - 
usage: lshw [-format] [-options ...]
       lshw -version

        -version        print program version ()

format can be
        -html           output hardware tree as HTML
        -xml            output hardware tree as XML
        -json           output hardware tree as a JSON object
        -short          output hardware paths
        -businfo        output bus information

options can be
        -class CLASS    only show a certain class of hardware
        -C CLASS        same as '-class CLASS'
        -c CLASS        same as '-class CLASS'
        -disable TEST   disable a test (like pci, isapnp, cpuid, etc. )
        -enable TEST    enable a test (like pci, isapnp, cpuid, etc. )
        -quiet          don't display status
        -sanitize       sanitize output (remove sensitive information like serial numbers, etc.)
        -numeric        output numeric IDs (for PCI, USB, etc.)
        -notime         exclude volatile attributes (timestamps) from output

#--------------------------------------------------------------------------------LSMEM
ubuntu:~$ lsmem --help

Usage:
 lsmem [options]

List the ranges of available memory with their online status.

Options:
 -J, --json           use JSON output format
 -P, --pairs          use key="value" output format
 -a, --all            list each individual memory block
 -b, --bytes          print SIZE in bytes rather than in human readable format
 -n, --noheadings     don't print headings
 -o, --output <list>  output columns
     --output-all     output all columns
 -r, --raw            use raw output format
 -S, --split <list>   split ranges by specified columns
 -s, --sysroot <dir>  use the specified directory as system root
     --summary[=when] print summary information (never,always or only)

 -h, --help           display this help
 -V, --version        display version

Available output columns:
      RANGE  start and end address of the memory range
       SIZE  size of the memory range
      STATE  online status of the memory range
  REMOVABLE  memory is removable
      BLOCK  memory block number or blocks range
       NODE  numa node of memory
      ZONES  valid zones for the memory range

For more details see lsmem(1).

#--------------------------------------------------------------------------------LSBLK
ubuntu:~$ lsblk --version
lsblk from util-linux 2.39.3
ubuntu:~$ lsblk --help   

Usage:
 lsblk [options] [<device> ...]

List information about block devices.

Options:
 -A, --noempty        don't print empty devices
 -D, --discard        print discard capabilities
 -E, --dedup <column> de-duplicate output by <column>
 -I, --include <list> show only devices with specified major numbers
 -J, --json           use JSON output format
 -M, --merge          group parents of sub-trees (usable for RAIDs, Multi-path)
 -O, --output-all     output all columns
 -P, --pairs          use key="value" output format
 -S, --scsi           output info about SCSI devices
 -N, --nvme           output info about NVMe devices
 -v, --virtio         output info about virtio devices
 -T, --tree[=<column>] use tree format output
 -a, --all            print all devices
 -b, --bytes          print SIZE in bytes rather than in human readable format
 -d, --nodeps         don't print slaves or holders
 -e, --exclude <list> exclude devices by major number (default: RAM disks)
 -f, --fs             output info about filesystems
 -i, --ascii          use ascii characters only
 -l, --list           use list format output
 -m, --perms          output info about permissions
 -n, --noheadings     don't print headings
 -o, --output <list>  output columns
 -p, --paths          print complete device path
 -r, --raw            use raw output format
 -s, --inverse        inverse dependencies
 -t, --topology       output info about topology
 -w, --width <num>    specifies output width as number of characters
 -x, --sort <column>  sort output by <column>
 -y, --shell          use column names to be usable as shell variable identifiers
 -z, --zoned          print zone related information
     --sysroot <dir>  use specified directory as system root

 -h, --help           display this help
 -V, --version        display version

Available output columns:
    ALIGNMENT  alignment offset
      ID-LINK  the shortest udev /dev/disk/by-id link name
           ID  udev ID (based on ID-LINK)
     DISC-ALN  discard alignment offset
          DAX  dax-capable device
    DISC-GRAN  discard granularity
     DISK-SEQ  disk sequence number
     DISC-MAX  discard max bytes
    DISC-ZERO  discard zeroes data
      FSAVAIL  filesystem size available
      FSROOTS  mounted filesystem roots
       FSSIZE  filesystem size
       FSTYPE  filesystem type
       FSUSED  filesystem size used
       FSUSE%  filesystem use percentage
        FSVER  filesystem version
        GROUP  group name
         HCTL  Host:Channel:Target:Lun for SCSI
      HOTPLUG  removable or hotplug device (usb, pcmcia, ...)
        KNAME  internal kernel device name
        LABEL  filesystem LABEL
      LOG-SEC  logical sector size
      MAJ:MIN  major:minor device number
       MIN-IO  minimum I/O size
         MODE  device node permissions
        MODEL  device identifier
           MQ  device queues
         NAME  device name
       OPT-IO  optimal I/O size
        OWNER  user name
    PARTFLAGS  partition flags
    PARTLABEL  partition LABEL
        PARTN  partition number as read from the partition table
     PARTTYPE  partition type code or UUID
 PARTTYPENAME  partition type name
     PARTUUID  partition UUID
         PATH  path to the device node
      PHY-SEC  physical sector size
       PKNAME  internal parent kernel device name
       PTTYPE  partition table type
       PTUUID  partition table identifier (usually UUID)
           RA  read-ahead of the device
         RAND  adds randomness
          REV  device revision
           RM  removable device
           RO  read-only device
         ROTA  rotational device
      RQ-SIZE  request queue size
        SCHED  I/O scheduler name
       SERIAL  disk serial number
         SIZE  size of the device
        START  partition start offset
        STATE  state of the device
   SUBSYSTEMS  de-duplicated chain of subsystems
   MOUNTPOINT  where the device is mounted
  MOUNTPOINTS  all locations where device is mounted
         TRAN  device transport type
         TYPE  device type
         UUID  filesystem UUID
       VENDOR  device vendor
        WSAME  write same max bytes
          WWN  unique storage identifier
        ZONED  zone model
      ZONE-SZ  zone size
   ZONE-WGRAN  zone write granularity
     ZONE-APP  zone append max bytes
      ZONE-NR  number of zones
    ZONE-OMAX  maximum number of open zones
    ZONE-AMAX  maximum number of active zones

For more details see lsblk(8).

#--------------------------------------------------------------------------------LSMOD
ubuntu:~$ lsmod --help
Usage: lsmod

#--------------------------------------------------------------------------------LOSETUP
ubuntu:~$ losetup
ubuntu:~$ losetup --help

Usage:
 losetup [options] [<loopdev>]
 losetup [options] -f | <loopdev> <file>

Set up and control loop devices.

Options:
 -a, --all                     list all used devices
 -d, --detach <loopdev>...     detach one or more devices
 -D, --detach-all              detach all used devices
 -f, --find                    find first unused device
 -c, --set-capacity <loopdev>  resize the device
 -j, --associated <file>       list all devices associated with <file>
 -L, --nooverlap               avoid possible conflict between devices

 -o, --offset <num>            start at offset <num> into file
     --sizelimit <num>         device is limited to <num> bytes of the file
 -b, --sector-size <num>       set the logical sector size to <num>
 -P, --partscan                create a partitioned loop device
 -r, --read-only               set up a read-only loop device
     --direct-io[=<on|off>]    open backing file with O_DIRECT
     --show                    print device name after setup (with -f)
 -v, --verbose                 verbose mode

 -J, --json                    use JSON --list output format
 -l, --list                    list info about all or specified (default)
 -n, --noheadings              don't print headings for --list output
 -O, --output <cols>           specify columns to output for --list
     --output-all              output all columns
     --raw                     use raw --list output format

 -h, --help                    display this help
 -V, --version                 display version

Available output columns:
         NAME  loop device name
    AUTOCLEAR  autoclear flag set
    BACK-FILE  device backing file
     BACK-INO  backing file inode number
 BACK-MAJ:MIN  backing file major:minor device number
      MAJ:MIN  loop device major:minor number
       OFFSET  offset from the beginning
     PARTSCAN  partscan flag set
           RO  read-only device
    SIZELIMIT  size limit of the file in bytes
          DIO  access backing file with direct-io
      LOG-SEC  logical sector size in bytes

For more details see losetup(8).

#--------------------------------------------------------------------------------LSLOGINS
ubuntu:~$ lslogins --help

Usage:
 lslogins [options] [<username>]

Display information about known users in the system.

Options:
 -a, --acc-expiration     display info about passwords expiration
 -c, --colon-separate     display data in a format similar to /etc/passwd
 -e, --export             display in an export-able output format
 -f, --failed             display data about the users' last failed logins
 -G, --supp-groups        display information about groups
 -g, --groups=<groups>    display users belonging to a group in <groups>
 -L, --last               show info about the users' last login sessions
 -l, --logins=<logins>    display only users from <logins>
 -n, --newline            display each piece of information on a new line
     --noheadings         don't print headings
     --notruncate         don't truncate output
 -o, --output[=<list>]    define the columns to output
     --output-all         output all columns
 -p, --pwd                display information related to login by password.
 -r, --raw                display in raw mode
 -s, --system-accs        display system accounts
     --time-format=<type> display dates in short, full or iso format
 -u, --user-accs          display user accounts
 -y, --shell              use column names to be usable as shell variable identifiers
 -Z, --context            display SELinux contexts
 -z, --print0             delimit user entries with a nul character
     --wtmp-file <path>   set an alternate path for wtmp
     --btmp-file <path>   set an alternate path for btmp
     --lastlog <path>     set an alternate path for lastlog

 -h, --help               display this help
 -V, --version            display version

Available output columns:
           USER  user name
            UID  user ID
          GECOS  full user name
        HOMEDIR  home directory
          SHELL  login shell
        NOLOGIN  log in disabled by nologin(8) or pam_nologin(8)
       PWD-LOCK  password defined, but locked
      PWD-EMPTY  password not defined
       PWD-DENY  login by password disabled
     PWD-METHOD  password encryption method
          GROUP  primary group name
            GID  primary group ID
    SUPP-GROUPS  supplementary group names
      SUPP-GIDS  supplementary group IDs
     LAST-LOGIN  date of last login
       LAST-TTY  last tty used
  LAST-HOSTNAME  hostname during the last session
   FAILED-LOGIN  date of last failed login
     FAILED-TTY  where did the login fail?
         HUSHED  user's hush settings
       PWD-WARN  days user is warned of password expiration
     PWD-CHANGE  date of last password change
        PWD-MIN  number of days required between changes
        PWD-MAX  max number of days a password may remain unchanged
      PWD-EXPIR  password expiration date
        CONTEXT  the user's security context
           PROC  number of processes run by the user

For more details see lslogins(1).

#--------------------------------------------------------------------------------LSNS
ubuntu:~$ lsns --version
lsns from util-linux 2.39.3
ubuntu:~$ lsns --help   

Usage:
 lsns [options] [<namespace>]

List system namespaces.

Options:
 -J, --json             use JSON output format
 -l, --list             use list format output
 -n, --noheadings       don't print headings
 -o, --output <list>    define which output columns to use
     --output-all       output all columns
 -P, --persistent       namespaces without processes
 -p, --task <pid>       print process namespaces
 -r, --raw              use the raw output format
 -u, --notruncate       don't truncate text in columns
 -W, --nowrap           don't use multi-line representation
 -t, --type <name>      namespace type (mnt, net, ipc, user, pid, uts, cgroup, time)
 -T, --tree <rel>       use tree format (parent, owner, or process)

 -h, --help             display this help
 -V, --version          display version

Available output columns:
          NS  namespace identifier (inode number)
        TYPE  kind of namespace
        PATH  path to the namespace
      NPROCS  number of processes in the namespace
         PID  lowest PID in the namespace
        PPID  PPID of the PID
     COMMAND  command line of the PID
         UID  UID of the PID
        USER  username of the PID
     NETNSID  namespace ID as used by network subsystem
        NSFS  nsfs mountpoint (usually used network subsystem)
         PNS  parent namespace identifier (inode number)
         ONS  owner namespace identifier (inode number)

For more details see lsns(8).

#--------------------------------------------------------------------------------LSOF
ubuntu:~$ lsof --help
lsof: illegal option character: -
lsof: -e not followed by a file system path: "lp"
lsof 4.95.0
 latest revision: https://github.com/lsof-org/lsof
 latest FAQ: https://github.com/lsof-org/lsof/blob/master/00FAQ
 latest (non-formatted) man page: https://github.com/lsof-org/lsof/blob/master/Lsof.8
 usage: [-?abhKlnNoOPRtUvVX] [+|-c c] [+|-d s] [+D D] [+|-E] [+|-e s] [+|-f[gG]]
 [-F [f]] [-g [s]] [-i [i]] [+|-L [l]] [+m [m]] [+|-M] [-o [o]] [-p s]
 [+|-r [t]] [-s [p:s]] [-S [t]] [-T [t]] [-u s] [+|-w] [-x [fl]] [--] [names]
Defaults in parentheses; comma-separated set (s) items; dash-separated ranges.
  -?|-h list help          -a AND selections (OR)     -b avoid kernel blocks
  -c c  cmd c ^c /c/[bix]  +c w  COMMAND width (9)    +d s  dir s files
  -d s  select by FD set   +D D  dir D tree *SLOW?*   +|-e s  exempt s *RISKY*
  -i select IPv[46] files  -K [i] list|(i)gn tasKs    -l list UID numbers
  -n no host names         -N select NFS files        -o list file offset
  -O no overhead *RISKY*   -P no port names           -Q allow failed search
  -R list paRent PID       -s list file size          -t terse listing
  -T disable TCP/TPI info  -U select Unix socket      -v list version info
  -V verbose search        +|-w  Warnings (+)         -X skip TCP&UDP* files
  -Z Z  context [Z]        -- end option scan       
  -E display endpoint info              +E display endpoint info and files
  +f|-f  +filesystem or -file names     +|-f[gG] flaGs 
  -F [f] select fields; -F? for help  
  +|-L [l] list (+) suppress (-) link counts < l (0 = all; default = 0)
                                        +m [m] use|create mount supplement
  +|-M   portMap registration (-)       -o o   o 0t offset digits (8)
  -p s   exclude(^)|select PIDs         -S [t] t second stat timeout (15)
  -T fqs TCP/TPI Fl,Q,St (s) info
  -g [s] exclude(^)|select and print process group IDs
  -i i   select by IPv[46] address: [46][proto][@host|addr][:svc_list|port_list]
  +|-r [t[m<fmt>]] repeat every t seconds (15);  + until no files, - forever.
       An optional suffix to t is m<fmt>; m must separate t from <fmt> and
      <fmt> is an strftime(3) format for the marker line.
  -s p:s  exclude(^)|select protocol (p = TCP|UDP) states by name(s).
  -u s   exclude(^)|select login|UID set s
  -x [fl] cross over +d|+D File systems or symbolic Links
  names  select named files or files on named file systems
Anyone can list all files; /dev warnings disabled; kernel ID check disabled.

#--------------------------------------------------------------------------------LSIPC
ubuntu:~$ lsipc --help

Usage:
 lsipc [options]

Show information on IPC facilities.

Resource options:
 -m, --shmems      shared memory segments
 -q, --queues      message queues
 -s, --semaphores  semaphores
 -g, --global      info about system-wide usage (may be used with -m, -q and -s)
 -i, --id <id>     print details on resource identified by <id>

Options:
     --noheadings         don't print headings
     --notruncate         don't truncate output
     --time-format=<type> display dates in short, full or iso format
 -b, --bytes              print SIZE in bytes rather than in human readable format
 -c, --creator            show creator and owner
 -e, --export             display in an export-able output format
 -J, --json               use the JSON output format
 -n, --newline            display each piece of information on a new line
 -l, --list               force list output format (for example with --id)
 -o, --output[=<list>]    define the columns to output
 -P, --numeric-perms      print numeric permissions (PERMS column)
 -r, --raw                display in raw mode
 -t, --time               show attach, detach and change times
 -y, --shell              use column names to be usable as shell variable identifiers

 -h, --help               display this help
 -V, --version            display version

Generic columns:
            KEY  Resource key
             ID  Resource ID
          OWNER  Owner's username or UID
          PERMS  Permissions
           CUID  Creator UID
          CUSER  Creator user
           CGID  Creator GID
         CGROUP  Creator group
            UID  User ID
           USER  User name
            GID  Group ID
          GROUP  Group name
          CTIME  Time of the last change

Shared-memory columns (--shmems):
           SIZE  Segment size
         NATTCH  Number of attached processes
         STATUS  Status
         ATTACH  Attach time
         DETACH  Detach time
        COMMAND  Creator command line
           CPID  PID of the creator
           LPID  PID of last user

Message-queue columns (--queues):
      USEDBYTES  Bytes used
           MSGS  Number of messages
           SEND  Time of last msg sent
           RECV  Time of last msg received
          LSPID  PID of the last msg sender
          LRPID  PID of the last msg receiver

Semaphore columns (--semaphores):
          NSEMS  Number of semaphores
          OTIME  Time of the last operation

Summary columns (--global):
       RESOURCE  Resource name
    DESCRIPTION  Resource description
          LIMIT  System-wide limit
           USED  Currently used
           USE%  Currently use percentage

For more details see lsipc(1).

#--------------------------------------------------------------------------------IP
ubuntu:~$
ubuntu:~$ dpkg -l iproute2
ii  iproute2       6.1.0-1ubuntu6 amd64        networking and traffic control tools

ubuntu:~$ ip -h
Usage: ip [ OPTIONS ] OBJECT { COMMAND | help }
       ip [ -force ] -batch filename
where  OBJECT := { address | addrlabel | amt | fou | help | ila | ioam | l2tp |
                   link | macsec | maddress | monitor | mptcp | mroute | mrule |
                   neighbor | neighbour | netconf | netns | nexthop | ntable |
                   ntbl | route | rule | sr | tap | tcpmetrics |
                   token | tunnel | tuntap | vrf | xfrm }
       OPTIONS := { -V[ersion] | -s[tatistics] | -d[etails] | -r[esolve] |
                    -h[uman-readable] | -iec | -j[son] | -p[retty] |
                    -f[amily] { inet | inet6 | mpls | bridge | link } |
                    -4 | -6 | -M | -B | -0 |
                    -l[oops] { maximum-addr-flush-attempts } | -br[ief] |
                    -o[neline] | -t[imestamp] | -ts[hort] | -b[atch] [filename] |
                    -rc[vbuf] [size] | -n[etns] name | -N[umeric] | -a[ll] |
                    -c[olor]}

#--------------------------------------------------------------------------------SS
ubuntu:~$ ss --version
ss utility, iproute2-6.1.0
ubuntu:~$ ss --help
Usage: ss [ OPTIONS ]
       ss [ OPTIONS ] [ FILTER ]
   -h, --help          this message
   -V, --version       output version information
   -n, --numeric       don't resolve service names
   -r, --resolve       resolve host names
   -a, --all           display all sockets
   -l, --listening     display listening sockets
   -o, --options       show timer information
   -e, --extended      show detailed socket information
   -m, --memory        show socket memory usage
   -p, --processes     show process using socket
   -T, --threads       show thread using socket
   -i, --info          show internal TCP information
       --tipcinfo      show internal tipc socket information
   -s, --summary       show socket usage summary
       --tos           show tos and priority information
       --cgroup        show cgroup information
   -b, --bpf           show bpf filter socket information
   -E, --events        continually display sockets as they are destroyed
   -Z, --context       display task SELinux security contexts
   -z, --contexts      display task and socket SELinux security contexts
   -N, --net           switch to the specified network namespace name

   -4, --ipv4          display only IP version 4 sockets
   -6, --ipv6          display only IP version 6 sockets
   -0, --packet        display PACKET sockets
   -t, --tcp           display only TCP sockets
   -M, --mptcp         display only MPTCP sockets
   -S, --sctp          display only SCTP sockets
   -u, --udp           display only UDP sockets
   -d, --dccp          display only DCCP sockets
   -w, --raw           display only RAW sockets
   -x, --unix          display only Unix domain sockets
       --tipc          display only TIPC sockets
       --vsock         display only vsock sockets
       --xdp           display only XDP sockets
   -f, --family=FAMILY display sockets of type FAMILY
       FAMILY := {inet|inet6|link|unix|netlink|vsock|tipc|xdp|help}

   -K, --kill          forcibly close sockets, display what was closed
   -H, --no-header     Suppress header line
   -O, --oneline       socket's data printed on a single line
       --inet-sockopt  show various inet socket options

   -A, --query=QUERY, --socket=QUERY
       QUERY := {all|inet|tcp|mptcp|udp|raw|unix|unix_dgram|unix_stream|unix_seqpacket|packet|packet_raw|packet_dgram|netlink|dccp|sctp|vsock_stream|vsock_dgram|tipc|xdp}[,QUERY]

   -D, --diag=FILE     Dump raw information about TCP sockets to FILE
   -F, --filter=FILE   read filter information from FILE
       FILTER := [ state STATE-FILTER ] [ EXPRESSION ]
       STATE-FILTER := {all|connected|synchronized|bucket|big|TCP-STATES}
         TCP-STATES := {established|syn-sent|syn-recv|fin-wait-{1,2}|time-wait|closed|close-wait|last-ack|listening|closing}
          connected := {established|syn-sent|syn-recv|fin-wait-{1,2}|time-wait|close-wait|last-ack|closing}
       synchronized := {established|syn-recv|fin-wait-{1,2}|time-wait|close-wait|last-ack|closing}
             bucket := {syn-recv|time-wait}
                big := {established|syn-sent|fin-wait-{1,2}|closed|close-wait|last-ack|listening|closing}

#--------------------------------------------------------------------------------TC
ubuntu:~$ tc -help
Usage:  tc [ OPTIONS ] OBJECT { COMMAND | help }
        tc [-force] -batch filename
where  OBJECT := { qdisc | class | filter | chain |
                    action | monitor | exec }
       OPTIONS := { -V[ersion] | -s[tatistics] | -d[etails] | -r[aw] |
                    -o[neline] | -j[son] | -p[retty] | -c[olor]
                    -b[atch] [filename] | -n[etns] name | -N[umeric] |
                     -nm | -nam[es] | { -cf | -conf } path
                     -br[ief] }
ubuntu:~$ man tc
NAME
       tc - show / manipulate traffic control settings

SYNOPSIS
       tc [ OPTIONS ] qdisc [ add | change | replace | link | delete ] dev DEV [ parent qdisc-id | root ] [ handle qdisc-id ] [
       ingress_block BLOCK_INDEX ] [ egress_block BLOCK_INDEX ] qdisc [ qdisc specific parameters ]

       tc  [  OPTIONS  ]  class [ add | change | replace | delete | show ] dev DEV parent qdisc-id [ classid class-id ] qdisc [
       qdisc specific parameters ]

       tc [ OPTIONS ] filter [ add | change | replace | delete | get ] dev DEV [ parent qdisc-id | root ] [ handle filter-id  ]
       protocol protocol prio priority filtertype [ filtertype specific parameters ] flowid flow-id

       tc [ OPTIONS ] filter [ add | change | replace | delete | get ] block BLOCK_INDEX [ handle filter-id ] protocol protocol
       prio priority filtertype [ filtertype specific parameters ] flowid flow-id

       tc  [ OPTIONS ] chain [ add | delete | get ] dev DEV [ parent qdisc-id | root ] filtertype [ filtertype specific parame-
       ters ]

       tc [ OPTIONS ] chain [ add | delete | get ] block BLOCK_INDEX filtertype [ filtertype specific parameters ]

       tc [ OPTIONS ] [ FORMAT ] qdisc { show | list } [ dev DEV ] [ root | ingress | handle QHANDLE | parent CLASSID ]  [  in-
       visible ]

       tc [ OPTIONS ] [ FORMAT ] class show dev DEV

       tc [ OPTIONS ] filter show dev DEV

       tc [ OPTIONS ] filter show block BLOCK_INDEX

       tc [ OPTIONS ] chain show dev DEV

       tc [ OPTIONS ] chain show block BLOCK_INDEX

       tc [ OPTIONS ] monitor [ file FILENAME ]

        OPTIONS  :=  {  [  -force ] -b[atch] [ filename ] | [ -n[etns] name ] | [ -N[umeric] ] | [ -nm | -nam[es] ] | [ { -cf |
       -c[onf] } [ filename ] ] [ -t[imestamp] ] | [ -t[short] | [ -o[neline] ] }

        FORMAT := { -s[tatistics] | -d[etails] | -r[aw] | -i[ec] | -g[raph] | -j[json] | -p[retty] | -col[or] }

#--------------------------------------------------------------------------------ETHTOOL
ubuntu:~$ ethtool -h
ethtool version 6.7
Usage:
        ethtool [ FLAGS ]  DEVNAME      Display standard information about device
        ethtool [ FLAGS ] -s|--change DEVNAME   Change generic options
                [ speed %d ]
                [ lanes %d ]
                [ duplex half|full ]
                [ port tp|aui|bnc|mii|fibre|da ]
                [ mdix auto|on|off ]
                [ autoneg on|off ]
                [ advertise %x[/%x] | mode on|off ... [--] ]
                [ phyad %d ]
                [ xcvr internal|external ]
                [ wol %d[/%d] | p|u|m|b|a|g|s|f|d... ]
                [ sopass %x:%x:%x:%x:%x:%x ]
                [ msglvl %d[/%d] | type on|off ... [--] ]
                [ master-slave preferred-master|preferred-slave|forced-master|forced-slave ]
        ethtool [ FLAGS ] -a|--show-pause DEVNAME       Show pause options
                [ --src aggregate | emac | pmac ]
        ethtool [ FLAGS ] -A|--pause DEVNAME    Set pause options
                [ autoneg on|off ]
                [ rx on|off ]
                [ tx on|off ]
        ethtool [ FLAGS ] -c|--show-coalesce DEVNAME    Show coalesce options
        ethtool [ FLAGS ] -C|--coalesce DEVNAME Set coalesce options
                [adaptive-rx on|off]
                [adaptive-tx on|off]
                [rx-usecs N]
                [rx-frames N]
                [rx-usecs-irq N]
                [rx-frames-irq N]
                [tx-usecs N]
                [tx-frames N]
                [tx-usecs-irq N]
                [tx-frames-irq N]
                [stats-block-usecs N]
                [pkt-rate-low N]
                [rx-usecs-low N]
                [rx-frames-low N]
                [tx-usecs-low N]
                [tx-frames-low N]
                [pkt-rate-high N]
                [rx-usecs-high N]
                [rx-frames-high N]
                [tx-usecs-high N]
                [tx-frames-high N]
                [sample-interval N]
                [cqe-mode-rx on|off]
                [cqe-mode-tx on|off]
                [tx-aggr-max-bytes N]
                [tx-aggr-max-frames N]
                [tx-aggr-time-usecs N]
        ethtool [ FLAGS ] -g|--show-ring DEVNAME        Query RX/TX ring parameters
        ethtool [ FLAGS ] -G|--set-ring DEVNAME Set RX/TX ring parameters
                [ rx N ]
                [ rx-mini N ]
                [ rx-jumbo N ]
                [ tx N ]
                [ rx-buf-len N ]
                [ tcp-data-split auto|on|off ]
                [ cqe-size N ]
                [ tx-push on|off ]
                [ rx-push on|off ]
                [ tx-push-buf-len N]
        ethtool [ FLAGS ] -k|--show-features|--show-offload DEVNAME     Get state of protocol offload and other features
        ethtool [ FLAGS ] -K|--features|--offload DEVNAME       Set protocol offload and other features
                FEATURE on|off ...
        ethtool [ FLAGS ] -i|--driver DEVNAME   Show driver information
        ethtool [ FLAGS ] -d|--register-dump DEVNAME    Do a register dump
                [ raw on|off ]
                [ file FILENAME ]
        ethtool [ FLAGS ] -e|--eeprom-dump DEVNAME      Do a EEPROM dump
                [ raw on|off ]
                [ offset N ]
                [ length N ]
        ethtool [ FLAGS ] -E|--change-eeprom DEVNAME    Change bytes in device EEPROM
                [ magic N ]
                [ offset N ]
                [ length N ]
                [ value N ]
        ethtool [ FLAGS ] -r|--negotiate DEVNAME        Restart N-WAY negotiation
        ethtool [ FLAGS ] -p|--identify DEVNAME Show visible port identification (e.g. blinking)
                [ TIME-IN-SECONDS ]
        ethtool [ FLAGS ] -t|--test DEVNAME     Execute adapter self test
                [ online | offline | external_lb ]
        ethtool [ FLAGS ] -S|--statistics DEVNAME       Show adapter statistics
                [ --all-groups | --groups [eth-phy] [eth-mac] [eth-ctrl] [rmon] ]
                [ --src aggregate | emac | pmac ]
        ethtool [ FLAGS ] --phy-statistics DEVNAME      Show phy statistics
        ethtool [ FLAGS ] -n|-u|--show-nfc|--show-ntuple DEVNAME        Show Rx network flow classification options or rules
                [ rx-flow-hash tcp4|udp4|ah4|esp4|sctp4|tcp6|udp6|ah6|esp6|sctp6 [context %d] |
                  rule %d ]
        ethtool [ FLAGS ] -N|-U|--config-nfc|--config-ntuple DEVNAME    Configure Rx network flow classification options or rules
                rx-flow-hash tcp4|udp4|ah4|esp4|sctp4|tcp6|udp6|ah6|esp6|sctp6 m|v|t|s|d|f|n|r... [context %d] |
                flow-type ether|ip4|tcp4|udp4|sctp4|ah4|esp4|ip6|tcp6|udp6|ah6|esp6|sctp6
                        [ src %x:%x:%x:%x:%x:%x [m %x:%x:%x:%x:%x:%x] ]
                        [ dst %x:%x:%x:%x:%x:%x [m %x:%x:%x:%x:%x:%x] ]
                        [ proto %d [m %x] ]
                        [ src-ip IP-ADDRESS [m IP-ADDRESS] ]
                        [ dst-ip IP-ADDRESS [m IP-ADDRESS] ]
                        [ tos %d [m %x] ]
                        [ tclass %d [m %x] ]
                        [ l4proto %d [m %x] ]
                        [ src-port %d [m %x] ]
                        [ dst-port %d [m %x] ]
                        [ spi %d [m %x] ]
                        [ vlan-etype %x [m %x] ]
                        [ vlan %x [m %x] ]
                        [ user-def %x [m %x] ]
                        [ dst-mac %x:%x:%x:%x:%x:%x [m %x:%x:%x:%x:%x:%x] ]
                        [ action %d ] | [ vf %d queue %d ]
                        [ context %d ]
                        [ loc %d ] |
                delete %d
        ethtool [ FLAGS ] -T|--show-time-stamping DEVNAME       Show time stamping capabilities
        ethtool [ FLAGS ] -x|--show-rxfh-indir|--show-rxfh DEVNAME      Show Rx flow hash indirection table and/or RSS hash key
                [ context %d ]
        ethtool [ FLAGS ] -X|--set-rxfh-indir|--rxfh DEVNAME    Set Rx flow hash indirection table and/or RSS hash key
                [ context %d|new ]
                [ equal N | weight W0 W1 ... | default ]
                [ hkey %x:%x:%x:%x:%x:.... ]
                [ hfunc FUNC ]
                [ delete ]
        ethtool [ FLAGS ] -f|--flash DEVNAME    Flash firmware image from the specified file to a region on the device
                FILENAME [ REGION-NUMBER-TO-FLASH ]
        ethtool [ FLAGS ] -P|--show-permaddr DEVNAME    Show permanent hardware address
        ethtool [ FLAGS ] -w|--get-dump DEVNAME Get dump flag, data
                [ data FILENAME ]
        ethtool [ FLAGS ] -W|--set-dump DEVNAME Set dump flag of the device
                N
        ethtool [ FLAGS ] -l|--show-channels DEVNAME    Query Channels
        ethtool [ FLAGS ] -L|--set-channels DEVNAME     Set Channels
                [ rx N ]
                [ tx N ]
                [ other N ]
                [ combined N ]
        ethtool [ FLAGS ] --show-priv-flags DEVNAME     Query private flags
        ethtool [ FLAGS ] --set-priv-flags DEVNAME      Set private flags
                FLAG on|off ...
        ethtool [ FLAGS ] -m|--dump-module-eeprom|--module-info DEVNAME Query/Decode Module EEPROM information and optical diagnostics if available
                [ raw on|off ]
                [ hex on|off ]
                [ offset N ]
                [ length N ]
                [ page N ]
                [ bank N ]
                [ i2c N ]
        ethtool [ FLAGS ] --show-eee DEVNAME    Show EEE settings
        ethtool [ FLAGS ] --set-eee DEVNAME     Set EEE settings
                [ eee on|off ]
                [ advertise %x ]
                [ tx-lpi on|off ]
                [ tx-timer %d ]
        ethtool [ FLAGS ] --set-phy-tunable DEVNAME     Set PHY tunable
                [ downshift on|off [count N] ]
                [ fast-link-down on|off [msecs N] ]
                [ energy-detect-power-down on|off [msecs N] ]
        ethtool [ FLAGS ] --get-phy-tunable DEVNAME     Get PHY tunable
                [ downshift ]
                [ fast-link-down ]
                [ energy-detect-power-down ]
        ethtool [ FLAGS ] --get-tunable DEVNAME Get tunable
                [ rx-copybreak ]
                [ tx-copybreak ]
                [ tx-buf-size ]
                [ pfc-prevention-tout ]
        ethtool [ FLAGS ] --set-tunable DEVNAME Set tunable
                [ rx-copybreak N ]
                [ tx-copybreak N ]
                [ tx-buf-size N ]
                [ pfc-prevention-tout N ]
        ethtool [ FLAGS ] --reset DEVNAME       Reset components
                [ flags %x ]
                [ mgmt ]
                [ mgmt-shared ]
                [ irq ]
                [ irq-shared ]
                [ dma ]
                [ dma-shared ]
                [ filter ]
                [ filter-shared ]
                [ offload ]
                [ offload-shared ]
                [ mac ]
                [ mac-shared ]
                [ phy ]
                [ phy-shared ]
                [ ram ]
                [ ram-shared ]
                [ ap ]
                [ ap-shared ]
                [ dedicated ]
                [ all ]
        ethtool [ FLAGS ] --show-fec DEVNAME    Show FEC settings
        ethtool [ FLAGS ] --set-fec DEVNAME     Set FEC settings
                [ encoding auto|off|rs|baser|llrs [...] ]
        ethtool [ FLAGS ] -Q|--per-queue DEVNAME        Apply per-queue command. 
The supported sub commands include --show-coalesce, --coalesce          [queue_mask %x] SUB_COMMAND
        ethtool [ FLAGS ] --cable-test DEVNAME  Perform a cable test
        ethtool [ FLAGS ] --cable-test-tdr DEVNAME      Print cable test time domain reflectrometery data
                [ first N ]
                [ last N ]
                [ step N ]
                [ pair N ]
        ethtool [ FLAGS ] --show-tunnels DEVNAME        Show NIC tunnel offload information
        ethtool [ FLAGS ] --show-module DEVNAME Show transceiver module settings
        ethtool [ FLAGS ] --set-module DEVNAME  Set transceiver module settings
                [ power-mode-policy high|auto ]
        ethtool [ FLAGS ] --get-plca-cfg DEVNAME        Get PLCA configuration
        ethtool [ FLAGS ] --set-plca-cfg DEVNAME        Set PLCA configuration
                [ enable on|off ]
                [ node-id N ]
                [ node-cnt N ]
                [ to-tmr N ]
                [ burst-cnt N ]
                [ burst-tmr N ]
        ethtool [ FLAGS ] --get-plca-status DEVNAME     Get PLCA status information
        ethtool [ FLAGS ] --show-mm DEVNAME     Show MAC merge layer state
        ethtool [ FLAGS ] --set-mm DEVNAME      Set MAC merge layer parameters
                [ verify-enabled on|off ]
                [ verify-time N ]
                [ tx-enabled on|off ]
                [ pmac-enabled on|off ]
                [ tx-min-frag-size 60-252 ]
        ethtool [ FLAGS ] --show-pse DEVNAME    Show settings for Power Sourcing Equipment
        ethtool [ FLAGS ] --set-pse DEVNAME     Set Power Sourcing Equipment settings
                [ podl-pse-admin-control enable|disable ]
        ethtool [ FLAGS ] -h|--help             Show this help
        ethtool [ FLAGS ] --version             Show version number
        ethtool --monitor               Show kernel notifications
                ( [ --all ]
                  | -s | --change
                  | -k | --show-features | --show-offload | -K | --features | --offload
                  | --show-priv-flags | --set-priv-flags
                  | -g | --show-ring | -G | --set-ring
                  | -l | --show-channels | -L | --set-channels
                  | -c | --show-coalesce | -C | --coalesce
                  | -a | --show-pause | -A | --pause
                  | --show-eee | --set-eee
                  | --cable-test
                  | --cable-test-tdr
                  | --show-module | --set-module )
                [ DEVNAME | * ]

FLAGS:
        --debug MASK    turn on debugging messages
        --json          enable JSON output format (not supported by all commands)
        -I|--include-statistics         request device statistics related to the command (not supported by all commands)
