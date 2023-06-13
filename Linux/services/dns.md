First of all - useful links:

- [Useful link 1](https://link.org/)
- `some cli command`{{exec}}
<br>
<details><summary>BIND 9 configuration blocks</summary>
<pre>
  <strong>acl</strong>      - Defines a named IP address matching list, for access control and other uses.
  <strong>controls</strong> - Declares control channels to be used by the rndc utility.
  <strong>dnssec-policy</strong> - Describes a DNSSEC key and signing policy for zones. See dnssec-policy for details.
  <strong>key</strong>      - Specifies key information for use in authentication and authorization using TSIG.
  <strong>logging</strong>  - Specifies what information the server logs and where the log messages are sent.
  <strong>masters</strong>  - Synonym for primaries.
  <strong>options</strong>  - Controls global server configuration options and sets defaults for other statements.
  <strong>parental-agents</strong> - Defines a named list of servers for inclusion in primary and secondary zones’ parental-agents lists.
  <strong>primaries</strong>  - Defines a named list of servers for inclusion in stub and secondary zones’ primaries or also-notify lists.
  <strong>server</strong>     - Sets certain configuration options on a per-server basis.
  <strong>statistics-channels</strong> - Declares communication channels to get access to named statistics.
  <strong>tls</strong>      - Specifies configuration information for a TLS connection, including a key-file, cert-file, ca-file, dhparam-file, remote-hostname, ciphers, protocols, prefer-server-ciphers, and session-tickets.
  <strong>http</strong>     - Specifies configuration information for an HTTP connection, including endpoints, listener-clients, and streams-per-connection.
  <strong>trust-anchors</strong>  - Defines DNSSEC trust anchors: if used with the initial-key or initial-ds keyword, trust anchors are kept up-to-date using RFC 5011 trust anchor maintenance;
  <strong>view</strong>     - Defines a view.
  <strong>zone</strong>     - Defines a zone.
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
