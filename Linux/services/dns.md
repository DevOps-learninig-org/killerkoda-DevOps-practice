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
<details><summary>Zone block definition</summary>
<pre>
zone &lt;string&gt; [ &lt;class&gt; ] {
	type primary;
	allow-query { &lt;address_match_element&gt;; ... };
	allow-query-on { &lt;address_match_element&gt;; ... };
	allow-transfer [ port &lt;integer&gt; ] [ transport &lt;string&gt; ] { &lt;address_match_element&gt;; ... };
	allow-update { &lt;address_match_element&gt;; ... };
	also-notify [ port &lt;integer&gt; ]  { ( &lt;remote-servers&gt; | &lt;ipv4_address&gt; [ port &lt;integer&gt; ] | &lt;ipv6_address&gt; [ port &lt;integer&gt; ] ) [ key &lt;string&gt; ] [ tls &lt;string&gt; ]; ... };
	alt-transfer-source ( &lt;ipv4_address&gt; | * ); // deprecated
	alt-transfer-source-v6 ( &lt;ipv6_address&gt; | * ); // deprecated
	auto-dnssec ( allow | maintain | off ); // deprecated
	check-dup-records ( fail | warn | ignore );
	check-integrity &lt;boolean&gt;;
	check-mx ( fail | warn | ignore );
	check-mx-cname ( fail | warn | ignore );
	check-names ( fail | warn | ignore );
	check-sibling &lt;boolean&gt;;
	check-spf ( warn | ignore );
	check-srv-cname ( fail | warn | ignore );
	check-wildcard &lt;boolean&gt;;
	database &lt;string&gt;;
	dialup ( notify | notify-passive | passive | refresh | &lt;boolean&gt; );
	dlz &lt;string&gt;;
	dnskey-sig-validity &lt;integer&gt;;
	dnssec-dnskey-kskonly &lt;boolean&gt;;
	dnssec-loadkeys-interval &lt;integer&gt;;
	dnssec-policy &lt;string&gt;;
	dnssec-secure-to-insecure &lt;boolean&gt;;
	dnssec-update-mode ( maintain | no-resign );
	file &lt;quoted_string&gt;;
	forward ( first | only );
	forwarders [ port &lt;integer&gt; ]  { ( &lt;ipv4_address&gt; | &lt;ipv6_address&gt; ) [ port &lt;integer&gt; ]; ... };
	inline-signing &lt;boolean&gt;;
	ixfr-from-differences &lt;boolean&gt;;
	journal &lt;quoted_string&gt;;
	key-directory &lt;quoted_string&gt;;
	masterfile-format ( raw | text );
	masterfile-style ( full | relative );
	max-ixfr-ratio ( unlimited | &lt;percentage&gt; );
	max-journal-size ( default | unlimited | &lt;sizeval&gt; );
	max-records &lt;integer&gt;;
	max-transfer-idle-out &lt;integer&gt;;
	max-transfer-time-out &lt;integer&gt;;
	max-zone-ttl ( unlimited | &lt;duration&gt; );
	notify ( explicit | master-only | primary-only | &lt;boolean&gt; );
	notify-delay &lt;integer&gt;;
	notify-source ( &lt;ipv4_address&gt; | * );
	notify-source-v6 ( &lt;ipv6_address&gt; | * );
	notify-to-soa &lt;boolean&gt;;
	nsec3-test-zone &lt;boolean&gt;; // test only
	parental-agents [ port &lt;integer&gt; ]  { ( &lt;remote-servers&gt; | &lt;ipv4_address&gt; [ port &lt;integer&gt; ] | &lt;ipv6_address&gt; [ port &lt;integer&gt; ] ) [ key &lt;string&gt; ] [ tls &lt;string&gt; ]; ... };
	parental-source ( &lt;ipv4_address&gt; | * );
	parental-source-v6 ( &lt;ipv6_address&gt; | * );
	serial-update-method ( date | increment | unixtime );
	sig-signing-nodes &lt;integer&gt;;
	sig-signing-signatures &lt;integer&gt;;
	sig-signing-type &lt;integer&gt;;
	sig-validity-interval &lt;integer&gt; [ &lt;integer&gt; ];
	update-check-ksk &lt;boolean&gt;;
	update-policy ( local | { ( deny | grant ) &lt;string&gt; ( 6to4-self | external | krb5-self | krb5-selfsub | krb5-subdomain | krb5-subdomain-self-rhs | ms-self | ms-selfsub | ms-subdomain | ms-subdomain-self-rhs | name | self | selfsub | selfwild | subdomain | tcp-self | wildcard | zonesub ) [ &lt;string&gt; ] &lt;rrtypelist&gt;; ... } );
	zero-no-soa-ttl &lt;boolean&gt;;
	zone-statistics ( full | terse | none | &lt;boolean&gt; );
};
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
