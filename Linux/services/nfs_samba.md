First of all - useful links:

- [microsoft.com - Microsoft SMB Protocol and CIFS Protocol Overview](https://learn.microsoft.com/en-us/windows/win32/fileio/microsoft-smb-protocol-and-cifs-protocol-overview)
- [samba.org - Samba Wiki](https://wiki.samba.org/index.php/Main_Page)
- [ubuntu.com - NFS](https://ubuntu.com/server/docs/service-nfs)
- [linuxhint.com - ](https://linuxhint.com/install-and-configure-nfs-server-ubuntu-22-04/)
- [digitalocean.com - How To Set Up an NFS Mount on Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nfs-mount-on-ubuntu-20-04)
- [youtube.com - NFS vs. CIFS vs. SMB: File Sharing Protocols Compared](https://www.youtube.com/watch?v=k3RxOqftzsU)
- [youtube.com - Visuality Systems SMB protocol](https://www.youtube.com/playlist?list=PLyOlunpO5LG1W1SgFGDUAlCTSz9j9zBax)
<br>
<details><summary>Samba v4.0 features</summary>
<pre>
  <ul>
  <li>NetBIOS over TCP/IP (NBT)</li>
  <li>SMB (known as CIFS in some versions)</li>
  <li>Samba supports POSIX extensions for CIFS/SMB. The initial extension was CIFS VFS (CAP_UNIX) from 2004, which has been somewhat superseded by SMB3.[35]</li>
  <li>DCE/RPC or more specifically, MSRPC, the Network Neighborhood suite of protocols</li>
  <li>A WINS server also known as a NetBIOS Name Server (NBNS)</li>
  <li>The NT Domain suite of protocols which includes NT Domain Logons</li>
  <li>Security Account Manager (SAM) database</li>
  <li>Local Security Authority (LSA) service</li>
  <li>NT-style printing service (SPOOLSS)</li>
  <li>NTLM</li>
  <li>Active Directory Logon using modified versions of Kerberos and LDAP</li>
  <li>DFS server</li>
  </ul>
</pre>
</details>
<details><summary>List of NFS RFC's</summary>
<pre>
  <a href="https://datatracker.ietf.org/doc/html/rfc2623">RFC 2623</a> - NFS Version 2 and Version 3 Security Issues and the NFS Protocol's Use of RPCSEC_GSS and Kerberos V5
  <a href="https://datatracker.ietf.org/doc/html/rfc2624">RFC 2624</a> - NFS Version 4 Design Considerations
  <a href="https://datatracker.ietf.org/doc/html/rfc3010">RFC 3010</a> - NFS version 4 Protocol
  <a href="https://datatracker.ietf.org/doc/html/rfc3530">RFC 3530</a> - Network File System (NFS) version 4 Protocol
  <a href="https://datatracker.ietf.org/doc/html/rfc4506">RFC 4506</a> - XDR: External Data Representation Standard
  <a href="https://datatracker.ietf.org/doc/html/rfc5403">RFC 5403</a> - RPCSEC_GSS Version 2
  <a href="https://datatracker.ietf.org/doc/html/rfc5531">RFC 5531</a> - RPC: Remote Procedure Call Protocol Specification Version 2
  <a href="https://datatracker.ietf.org/doc/html/rfc5532">RFC 5532</a> - Network File System (NFS) Remote Direct Memory Access (RDMA) Problem Statement
  <a href="https://datatracker.ietf.org/doc/html/rfc5661">RFC 5661</a> - Network File System (NFS) Version 4 Minor Version 1 Protocol
  <a href="https://datatracker.ietf.org/doc/html/rfc5662">RFC 5662</a> - Network File System (NFS) Version 4 Minor Version 1 External Data Representation Standard (XDR) Description
  <a href="https://datatracker.ietf.org/doc/html/rfc5663">RFC 5663</a> - Parallel NFS (pNFS) Block/Volume Layout
  <a href="https://datatracker.ietf.org/doc/html/rfc5664">RFC 5664</a> - Object-Based Parallel NFS (pNFS) Operations
  <a href="https://datatracker.ietf.org/doc/html/rfc5665">RFC 5665</a> - IANA Considerations for Remote Procedure Call (RPC) Network Identifiers and Universal Address Formats
  <a href="https://datatracker.ietf.org/doc/html/rfc5666">RFC 5666</a> - Remote Direct Memory Access Transport for Remote Procedure Call
  <a href="https://datatracker.ietf.org/doc/html/rfc5667">RFC 5667</a> - Network File System (NFS) Direct Data Placement
  <a href="https://datatracker.ietf.org/doc/html/rfc5716">RFC 5716</a> - Requirements for Federated File Systems
  <a href="https://datatracker.ietf.org/doc/html/rfc6641">RFC 6641</a> - Using DNS SRV to Specify a Global File Namespace with NFS Version 4
  <a href="https://datatracker.ietf.org/doc/html/rfc6688">RFC 6688</a> - Parallel NFS (pNFS) Block Disk Protection
  <a href="https://datatracker.ietf.org/doc/html/rfc7204">RFC 7204</a> - Requirements for Labeled NFS
  <a href="https://datatracker.ietf.org/doc/html/rfc7530">RFC 7530</a> - Network File System (NFS) Version 4 Protocol
  <a href="https://datatracker.ietf.org/doc/html/rfc7531">RFC 7531</a> - Network File System (NFS) Version 4 External Data Representation Standard (XDR) Description
  <a href="https://datatracker.ietf.org/doc/html/rfc7530">RFC 7530</a> - formally obsoletes RFC 3530. This document, together with RFC 7530, replaces RFC 3530 as the definition of the NFS version 4 protocol.
  <a href="https://datatracker.ietf.org/doc/html/rfc7532">RFC 7532</a> - Namespace Database (NSDB) Protocol for Federated File Systems
  <a href="https://datatracker.ietf.org/doc/html/rfc7533">RFC 7533</a> - Administration Protocol for Federated File Systems
  <a href="https://datatracker.ietf.org/doc/html/rfc7569">RFC 7569</a> - Registry Specification for Mandatory Access Control (MAC) Security Label Formats
  <a href="https://datatracker.ietf.org/doc/html/rfc7861">RFC 7861</a> - Remote Procedure Call (RPC) Security Version 3
  <a href="https://datatracker.ietf.org/doc/html/rfc7862">RFC 7862</a> - Network File System (NFS) Version 4 Minor Version 2 Protocol
  <a href="https://datatracker.ietf.org/doc/html/rfc7863">RFC 7863</a> - Network File System (NFS) Version 4 Minor Version 2 External Data Representation Standard (XDR) Description
  <a href="https://datatracker.ietf.org/doc/html/rfc7931">RFC 7931</a> - NFSv4.0 Migration: Specification Update
  <a href="https://datatracker.ietf.org/doc/html/rfc8000">RFC 8000</a> - Requirements for NFSv4 Multi-Domain Namespace Deployment
  <a href="https://datatracker.ietf.org/doc/html/rfc8154">RFC 8154</a> - Parallel NFS (pNFS) Small Computer System Interface (SCSI) Layout
  <a href="https://datatracker.ietf.org/doc/html/rfc8166">RFC 8166</a> - Remote Direct Memory Access Transport for Remote Procedure Call Version 1
  <a href="https://datatracker.ietf.org/doc/html/rfc8167">RFC 8167</a> - Bidirectional Remote Procedure Call on RPC-over-RDMA Transports
  <a href="https://datatracker.ietf.org/doc/html/rfc8178">RFC 8178</a> - Rules for NFSv4 Extensions and Minor Versions
  <a href="https://datatracker.ietf.org/doc/html/rfc8267">RFC 8267</a> - Network File System (NFS) Upper-Layer Binding to RPC-over-RDMA Version 1
  <a href="https://datatracker.ietf.org/doc/html/rfc8275">RFC 8275</a> - Allowing Inheritable NFSv4 Access Control Entries to Override the Umask
  <a href="https://datatracker.ietf.org/doc/html/rfc8276">RFC 8276</a> - File System Extended Attributes in NFSv4
  <a href="https://datatracker.ietf.org/doc/html/rfc8434">RFC 8434</a> - Requirements for Parallel NFS (pNFS) Layout Types
  <a href="https://datatracker.ietf.org/doc/html/rfc8435">RFC 8435</a> - Parallel NFS (pNFS) Flexible File Layout
  <a href="https://datatracker.ietf.org/doc/html/rfc8587">RFC 8587</a> - NFS Version 4.0 Trunking Update
  <a href="https://datatracker.ietf.org/doc/html/rfc8797">RFC 8797</a> - Remote Direct Memory Access - Connection Manager (RDMA-CM) Private Data for RPC-over-RDMA Version 1
  <a href="https://datatracker.ietf.org/doc/html/rfc8881">RFC 8881</a> - Network File System (NFS) Version 4 Minor Version 1 Protocol
  <a href="https://datatracker.ietf.org/doc/html/rfc9289">RFC 9289</a> - Towards Remote Procedure Call Encryption by Default
</pre>
</details>
<details><summary>/etc/fstab options for NFS mountpoints</summary>
<pre>
Options supported by all versions of Linux NFS<br>
  <strong>soft / hard</strong>  - Determines the recovery behavior of the NFS client after an NFS request times out. If neither option is specified (or if the hard option is specified), NFS requests are retried indefinitely. 
  <strong>timeo=n</strong>      - The time in deciseconds (tenths of a second) the NFS client waits for a response before it retries an NFS request.
  <strong>retrans=n</strong>    - The number of times the NFS client retries a request before it attempts further recovery action.
  <strong>rsize=n</strong>      - The maximum number of bytes in each network READ request that the NFS client can receive when reading data from a file on an NFS server.
  <strong>wsize=n</strong>      - The maximum number of bytes per network WRITE request that the NFS client can send when writing data to a file on an NFS server.
  <strong>ac / noac</strong>    - Selects whether the client may cache file attributes. If neither option is specified (or if ac is specified), the client caches file attributes.
  <strong>acregmin=n</strong>  - The minimum time (in seconds) that the NFS client caches attributes of a regular file before it requests fresh attribute information from a server.
  <strong>acregmax=n</strong>  - The maximum time (in seconds) that the NFS client caches attributes of a regular file before it requests fresh attribute information from a server.
  <strong>acdirmin=n</strong>  - The minimum time (in seconds) that the NFS client caches attributes of a directory before it requests fresh attribute information from a server.
  <strong>acdirmax=n</strong>  - The maximum time (in seconds) that the NFS client caches attributes of a directory before it requests fresh attribute information from a server.
  <strong>actimeo=n</strong>   - Using actimeo sets all of acregmin, acregmax, acdirmin, and acdirmax to the same value.
  <strong>bg / fg</strong>     - Determines how the mount(8) command behaves if an attempt to mount an export fails.
  <strong>retry=n</strong>      - The number of minutes that the mount(8) command retries an NFS mount operation in the foreground or background before giving up.
  <strong>sec=mode</strong>    - The RPCGSS security flavor to use for accessing files on this mount point.
  <strong>sharecache / nosharecache</strong>  - Determines how the client's data cache and attribute cache are shared when mounting the same export more than once concurrently.
  <strong>resvport / noresvport</strong>      - Specifies whether the NFS client should use a privileged source port when communicating with an NFS server for this mount point.
  <strong>lookupcache=mode</strong> - Specifies how the kernel manages its cache of directory entries for a given mount point. Mode can be one of all, none, pos, or positive.<br>
Options for NFS version 4 only<br>
  <strong>minorversion=n</strong>     - Specifies the protocol minor version number. NFSv4 introduces "minor versioning," where NFS protocol enhancements can be introduced without bumping the NFS protocol version number.
  <strong>proto=netid</strong>        - The transport protocol name and protocol family the NFS client uses to transmit requests to the NFS server for this mount point.
  <strong>port=n</strong>             - The numeric value of the server's NFS service port. If the server's NFS service is not available on the specified port, the mount request fails.
  <strong>intr / nointr</strong>      - Selects whether to allow signals to interrupt file operations on this mount point.
  <strong>cto / nocto</strong>        - Selects whether to use close-to-open cache coherence semantics for NFS directories on this mount point.
  <strong>clientaddr=n.n.n.n</strong> - Specifies a single IPv4 address (in dotted-quad form), or a non-link-local IPv6 address, that the NFS client advertises to allow servers to perform NFS version 4 callback requests against files on this mount point.<br>
Examples:<br>
  server:/export  /mnt  nfs4  sec=krb5  0 0
  [fe80::215:c5ff:fb3e:e2b1%eth0]:/export  /mnt  nfs  defaults  0 0
  server:/export  /usr  nfs  ro,nolock,nocto,actimeo=3600  0 0
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
