First of all - useful links:

- [microsoft.com - Microsoft SMB Protocol and CIFS Protocol Overview](https://learn.microsoft.com/en-us/windows/win32/fileio/microsoft-smb-protocol-and-cifs-protocol-overview)
- [samba.org - Samba Wiki](https://wiki.samba.org/index.php/Main_Page)
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
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 2623</a> - NFS Version 2 and Version 3 Security Issues and the NFS Protocol's Use of RPCSEC_GSS and Kerberos V5
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 2624</a> - NFS Version 4 Design Considerations
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 3010</a> - NFS version 4 Protocol
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 3530</a> - Network File System (NFS) version 4 Protocol
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 4506</a> - XDR: External Data Representation Standard
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 5403</a> - RPCSEC_GSS Version 2
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 5531</a> - RPC: Remote Procedure Call Protocol Specification Version 2
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 5532</a> - Network File System (NFS) Remote Direct Memory Access (RDMA) Problem Statement
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 5661</a> - Network File System (NFS) Version 4 Minor Version 1 Protocol
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 5662</a> - Network File System (NFS) Version 4 Minor Version 1 External Data Representation Standard (XDR) Description
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 5663</a> - Parallel NFS (pNFS) Block/Volume Layout
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 5664</a> - Object-Based Parallel NFS (pNFS) Operations
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 5665</a> - IANA Considerations for Remote Procedure Call (RPC) Network Identifiers and Universal Address Formats
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 5666</a> - Remote Direct Memory Access Transport for Remote Procedure Call
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 5667</a> - Network File System (NFS) Direct Data Placement
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 5716</a> - Requirements for Federated File Systems
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 6641</a> - Using DNS SRV to Specify a Global File Namespace with NFS Version 4
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 6688</a> - Parallel NFS (pNFS) Block Disk Protection
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 7204</a> - Requirements for Labeled NFS
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 7530</a> - Network File System (NFS) Version 4 Protocol
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 7531</a> - Network File System (NFS) Version 4 External Data Representation Standard (XDR) Description
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 7530</a> - formally obsoletes RFC 3530. This document, together with RFC 7530, replaces RFC 3530 as the definition of the NFS version 4 protocol.
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 7532</a> - Namespace Database (NSDB) Protocol for Federated File Systems
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 7533</a> - Administration Protocol for Federated File Systems
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 7569</a> - Registry Specification for Mandatory Access Control (MAC) Security Label Formats
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 7861</a> - Remote Procedure Call (RPC) Security Version 3
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 7862</a> - Network File System (NFS) Version 4 Minor Version 2 Protocol
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 7863</a> - Network File System (NFS) Version 4 Minor Version 2 External Data Representation Standard (XDR) Description
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 7931</a> - NFSv4.0 Migration: Specification Update
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 8000</a> - Requirements for NFSv4 Multi-Domain Namespace Deployment
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 8154</a> - Parallel NFS (pNFS) Small Computer System Interface (SCSI) Layout
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 8166</a> - Remote Direct Memory Access Transport for Remote Procedure Call Version 1
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 8167</a> - Bidirectional Remote Procedure Call on RPC-over-RDMA Transports
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 8178</a> - Rules for NFSv4 Extensions and Minor Versions
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 8267</a> - Network File System (NFS) Upper-Layer Binding to RPC-over-RDMA Version 1
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 8275</a> - Allowing Inheritable NFSv4 Access Control Entries to Override the Umask
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 8276</a> - File System Extended Attributes in NFSv4
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 8434</a> - Requirements for Parallel NFS (pNFS) Layout Types
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 8435</a> - Parallel NFS (pNFS) Flexible File Layout
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 8587</a> - NFS Version 4.0 Trunking Update
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 8797</a> - Remote Direct Memory Access - Connection Manager (RDMA-CM) Private Data for RPC-over-RDMA Version 1
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 8881</a> - Network File System (NFS) Version 4 Minor Version 1 Protocol
  <a href="https://datatracker.ietf.org/doc/html/rfc4510">RFC 9289</a> - Towards Remote Procedure Call Encryption by Default
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
