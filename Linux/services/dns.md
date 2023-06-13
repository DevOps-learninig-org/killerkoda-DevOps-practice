First of all - useful links:

- [ietf.org - RFC1034 DOMAIN NAMES - CONCEPTS AND FACILITIES](https://datatracker.ietf.org/doc/html/rfc1034)
- [readthedocs.io - BIND 9 Administrator Reference Manual](https://bind9.readthedocs.io/en/stable/)
- [digitalocean.com - How To Configure BIND as a Private Network DNS Server](https://www.digitalocean.com/community/tutorials/how-to-configure-bind-as-a-private-network-dns-server-on-ubuntu-18-04)
- [sbarjatiya.com - Configuring IPv6 and IPv4, forward and reverse DNS](https://www.sbarjatiya.com/notes_wiki/index.php/Configuring_IPv6_and_IPv4,_forward_and_reverse_DNS)
- [debian.org - BIND9](https://wiki.debian.org/Bind9)
- `man named`{{exec}}
- `man rndc`{{exec}}
- `man dig`{{exec}}
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
<details><summary>Options Block Grammar ( /etc/bind/named.conf.options )</summary>
<pre>
options {
	allow-new-zones &lt;boolean&gt;;
	allow-notify { &lt;address_match_element&gt;; ... };
	allow-query { &lt;address_match_element&gt;; ... };
	allow-query-cache { &lt;address_match_element&gt;; ... };
	allow-query-cache-on { &lt;address_match_element&gt;; ... };
	allow-query-on { &lt;address_match_element&gt;; ... };
	allow-recursion { &lt;address_match_element&gt;; ... };
	allow-recursion-on { &lt;address_match_element&gt;; ... };
	allow-transfer [ port &lt;integer&gt; ] [ transport &lt;string&gt; ] { &lt;address_match_element&gt;; ... };
	allow-update { &lt;address_match_element&gt;; ... };
	allow-update-forwarding { &lt;address_match_element&gt;; ... };
	also-notify [ port &lt;integer&gt; ]  { ( &lt;remote-servers&gt; | &lt;ipv4_address&gt; [ port &lt;integer&gt; ] | &lt;ipv6_address&gt; [ port &lt;integer&gt; ] ) [ key &lt;string&gt; ] [ tls &lt;string&gt; ]; ... };
	alt-transfer-source ( &lt;ipv4_address&gt; | * ); // deprecated
	alt-transfer-source-v6 ( &lt;ipv6_address&gt; | * ); // deprecated
	answer-cookie &lt;boolean&gt;;
	attach-cache &lt;string&gt;;
	auth-nxdomain &lt;boolean&gt;;
	auto-dnssec ( allow | maintain | off ); // deprecated
	automatic-interface-scan &lt;boolean&gt;;
	avoid-v4-udp-ports { &lt;portrange&gt;; ... }; // deprecated
	avoid-v6-udp-ports { &lt;portrange&gt;; ... }; // deprecated
	bindkeys-file &lt;quoted_string&gt;;
	blackhole { &lt;address_match_element&gt;; ... };
	catalog-zones { zone &lt;string&gt; [ default-primaries [ port &lt;integer&gt; ]  { ( &lt;remote-servers&gt; | &lt;ipv4_address&gt; [ port &lt;integer&gt; ] | &lt;ipv6_address&gt; [ port &lt;integer&gt; ] ) [ key &lt;string&gt; ] [ tls &lt;string&gt; ]; ... } ] [ zone-directory &lt;quoted_string&gt; ] [ in-memory &lt;boolean&gt; ] [ min-update-interval &lt;duration&gt; ]; ... };
	check-dup-records ( fail | warn | ignore );
	check-integrity &lt;boolean&gt;;
	check-mx ( fail | warn | ignore );
	check-mx-cname ( fail | warn | ignore );
	check-names ( primary | master | secondary | slave | response ) ( fail | warn | ignore ); // may occur multiple times
	check-sibling &lt;boolean&gt;;
	check-spf ( warn | ignore );
	check-srv-cname ( fail | warn | ignore );
	check-wildcard &lt;boolean&gt;;
	clients-per-query &lt;integer&gt;;
	cookie-algorithm ( aes | siphash24 );
	cookie-secret &lt;string&gt;; // may occur multiple times
	coresize ( default | unlimited | &lt;sizeval&gt; ); // deprecated
	datasize ( default | unlimited | &lt;sizeval&gt; ); // deprecated
	deny-answer-addresses { &lt;address_match_element&gt;; ... } [ except-from { &lt;string&gt;; ... } ];
	deny-answer-aliases { &lt;string&gt;; ... } [ except-from { &lt;string&gt;; ... } ];
	dialup ( notify | notify-passive | passive | refresh | &lt;boolean&gt; );
	directory &lt;quoted_string&gt;;
	disable-algorithms &lt;string&gt; { &lt;string&gt;; ... }; // may occur multiple times
	disable-ds-digests &lt;string&gt; { &lt;string&gt;; ... }; // may occur multiple times
	disable-empty-zone &lt;string&gt;; // may occur multiple times
	dns64 &lt;netprefix&gt; {
		break-dnssec &lt;boolean&gt;;
		clients { &lt;address_match_element&gt;; ... };
		exclude { &lt;address_match_element&gt;; ... };
		mapped { &lt;address_match_element&gt;; ... };
		recursive-only &lt;boolean&gt;;
		suffix &lt;ipv6_address&gt;;
	}; // may occur multiple times
	dns64-contact &lt;string&gt;;
	dns64-server &lt;string&gt;;
	dnskey-sig-validity &lt;integer&gt;;
	dnsrps-enable &lt;boolean&gt;;
	dnsrps-options { &lt;unspecified-text&gt; };
	dnssec-accept-expired &lt;boolean&gt;;
	dnssec-dnskey-kskonly &lt;boolean&gt;;
	dnssec-loadkeys-interval &lt;integer&gt;;
	dnssec-must-be-secure &lt;string&gt; &lt;boolean&gt;; // may occur multiple times
	dnssec-policy &lt;string&gt;;
	dnssec-secure-to-insecure &lt;boolean&gt;;
	dnssec-update-mode ( maintain | no-resign );
	dnssec-validation ( yes | no | auto );
	dnstap { ( all | auth | client | forwarder | resolver | update ) [ ( query | response ) ]; ... };
	dnstap-identity ( &lt;quoted_string&gt; | none | hostname );
	dnstap-output ( file | unix ) &lt;quoted_string&gt; [ size ( unlimited | &lt;size&gt; ) ] [ versions ( unlimited | &lt;integer&gt; ) ] [ suffix ( increment | timestamp ) ];
	dnstap-version ( &lt;quoted_string&gt; | none );
	dscp &lt;integer&gt;; // obsolete
	dual-stack-servers [ port &lt;integer&gt; ] { ( &lt;quoted_string&gt; [ port &lt;integer&gt; ] | &lt;ipv4_address&gt; [ port &lt;integer&gt; ] | &lt;ipv6_address&gt; [ port &lt;integer&gt; ] ); ... };
	dump-file &lt;quoted_string&gt;;
	edns-udp-size &lt;integer&gt;;
	empty-contact &lt;string&gt;;
	empty-server &lt;string&gt;;
	empty-zones-enable &lt;boolean&gt;;
	fetch-quota-params &lt;integer&gt; &lt;fixedpoint&gt; &lt;fixedpoint&gt; &lt;fixedpoint&gt;;
	fetches-per-server &lt;integer&gt; [ ( drop | fail ) ];
	fetches-per-zone &lt;integer&gt; [ ( drop | fail ) ];
	files ( default | unlimited | &lt;sizeval&gt; ); // deprecated
	flush-zones-on-shutdown &lt;boolean&gt;;
	forward ( first | only );
	forwarders [ port &lt;integer&gt; ]  { ( &lt;ipv4_address&gt; | &lt;ipv6_address&gt; ) [ port &lt;integer&gt; ]; ... };
	fstrm-set-buffer-hint &lt;integer&gt;;
	fstrm-set-flush-timeout &lt;integer&gt;;
	fstrm-set-input-queue-size &lt;integer&gt;;
	fstrm-set-output-notify-threshold &lt;integer&gt;;
	fstrm-set-output-queue-model ( mpsc | spsc );
	fstrm-set-output-queue-size &lt;integer&gt;;
	fstrm-set-reopen-interval &lt;duration&gt;;
	geoip-directory ( &lt;quoted_string&gt; | none );
	glue-cache &lt;boolean&gt;; // deprecated
	heartbeat-interval &lt;integer&gt;;
	hostname ( &lt;quoted_string&gt; | none );
	http-listener-clients &lt;integer&gt;;
	http-port &lt;integer&gt;;
	http-streams-per-connection &lt;integer&gt;;
	https-port &lt;integer&gt;;
	interface-interval &lt;duration&gt;;
	ipv4only-contact &lt;string&gt;;
	ipv4only-enable &lt;boolean&gt;;
	ipv4only-server &lt;string&gt;;
	ixfr-from-differences ( primary | master | secondary | slave | &lt;boolean&gt; );
	keep-response-order { &lt;address_match_element&gt;; ... };
	key-directory &lt;quoted_string&gt;;
	lame-ttl &lt;duration&gt;;
	listen-on [ port &lt;integer&gt; ] [ tls &lt;string&gt; ] [ http &lt;string&gt; ] { &lt;address_match_element&gt;; ... }; // may occur multiple times
	listen-on-v6 [ port &lt;integer&gt; ] [ tls &lt;string&gt; ] [ http &lt;string&gt; ] { &lt;address_match_element&gt;; ... }; // may occur multiple times
	lmdb-mapsize &lt;sizeval&gt;;
	lock-file ( &lt;quoted_string&gt; | none );
	managed-keys-directory &lt;quoted_string&gt;;
	masterfile-format ( raw | text );
	masterfile-style ( full | relative );
	match-mapped-addresses &lt;boolean&gt;;
	max-cache-size ( default | unlimited | &lt;sizeval&gt; | &lt;percentage&gt; );
	max-cache-ttl &lt;duration&gt;;
	max-clients-per-query &lt;integer&gt;;
	max-ixfr-ratio ( unlimited | &lt;percentage&gt; );
	max-journal-size ( default | unlimited | &lt;sizeval&gt; );
	max-ncache-ttl &lt;duration&gt;;
	max-records &lt;integer&gt;;
	max-recursion-depth &lt;integer&gt;;
	max-recursion-queries &lt;integer&gt;;
	max-refresh-time &lt;integer&gt;;
	max-retry-time &lt;integer&gt;;
	max-rsa-exponent-size &lt;integer&gt;;
	max-stale-ttl &lt;duration&gt;;
	max-transfer-idle-in &lt;integer&gt;;
	max-transfer-idle-out &lt;integer&gt;;
	max-transfer-time-in &lt;integer&gt;;
	max-transfer-time-out &lt;integer&gt;;
	max-udp-size &lt;integer&gt;;
	max-zone-ttl ( unlimited | &lt;duration&gt; );
	memstatistics &lt;boolean&gt;;
	memstatistics-file &lt;quoted_string&gt;;
	message-compression &lt;boolean&gt;;
	min-cache-ttl &lt;duration&gt;;
	min-ncache-ttl &lt;duration&gt;;
	min-refresh-time &lt;integer&gt;;
	min-retry-time &lt;integer&gt;;
	minimal-any &lt;boolean&gt;;
	minimal-responses ( no-auth | no-auth-recursive | &lt;boolean&gt; );
	multi-master &lt;boolean&gt;;
	new-zones-directory &lt;quoted_string&gt;;
	no-case-compress { &lt;address_match_element&gt;; ... };
	nocookie-udp-size &lt;integer&gt;;
	notify ( explicit | master-only | primary-only | &lt;boolean&gt; );
	notify-delay &lt;integer&gt;;
	notify-rate &lt;integer&gt;;
	notify-source ( &lt;ipv4_address&gt; | * );
	notify-source-v6 ( &lt;ipv6_address&gt; | * );
	notify-to-soa &lt;boolean&gt;;
	nsec3-test-zone &lt;boolean&gt;; // test only
	nta-lifetime &lt;duration&gt;;
	nta-recheck &lt;duration&gt;;
	nxdomain-redirect &lt;string&gt;;
	parental-source ( &lt;ipv4_address&gt; | * );
	parental-source-v6 ( &lt;ipv6_address&gt; | * );
	pid-file ( &lt;quoted_string&gt; | none );
	port &lt;integer&gt;;
	preferred-glue &lt;string&gt;;
	prefetch &lt;integer&gt; [ &lt;integer&gt; ];
	provide-ixfr &lt;boolean&gt;;
	qname-minimization ( strict | relaxed | disabled | off );
	query-source [ address ] ( &lt;ipv4_address&gt; | * );
	query-source-v6 [ address ] ( &lt;ipv6_address&gt; | * );
	querylog &lt;boolean&gt;;
	random-device ( &lt;quoted_string&gt; | none ); // obsolete
	rate-limit {
		all-per-second &lt;integer&gt;;
		errors-per-second &lt;integer&gt;;
		exempt-clients { &lt;address_match_element&gt;; ... };
		ipv4-prefix-length &lt;integer&gt;;
		ipv6-prefix-length &lt;integer&gt;;
		log-only &lt;boolean&gt;;
		max-table-size &lt;integer&gt;;
		min-table-size &lt;integer&gt;;
		nodata-per-second &lt;integer&gt;;
		nxdomains-per-second &lt;integer&gt;;
		qps-scale &lt;integer&gt;;
		referrals-per-second &lt;integer&gt;;
		responses-per-second &lt;integer&gt;;
		slip &lt;integer&gt;;
		window &lt;integer&gt;;
	};
	recursing-file &lt;quoted_string&gt;;
	recursion &lt;boolean&gt;;
	recursive-clients &lt;integer&gt;;
	request-expire &lt;boolean&gt;;
	request-ixfr &lt;boolean&gt;;
	request-nsid &lt;boolean&gt;;
	require-server-cookie &lt;boolean&gt;;
	reserved-sockets &lt;integer&gt;; // deprecated
	resolver-nonbackoff-tries &lt;integer&gt;;
	resolver-query-timeout &lt;integer&gt;;
	resolver-retry-interval &lt;integer&gt;;
	response-padding { &lt;address_match_element&gt;; ... } block-size &lt;integer&gt;;
	response-policy { zone &lt;string&gt; [ add-soa &lt;boolean&gt; ] [ log &lt;boolean&gt; ] [ max-policy-ttl &lt;duration&gt; ] [ min-update-interval &lt;duration&gt; ] [ policy ( cname | disabled | drop | given | no-op | nodata | nxdomain | passthru | tcp-only &lt;quoted_string&gt; ) ] [ recursive-only &lt;boolean&gt; ] [ nsip-enable &lt;boolean&gt; ] [ nsdname-enable &lt;boolean&gt; ]; ... } [ add-soa &lt;boolean&gt; ] [ break-dnssec &lt;boolean&gt; ] [ max-policy-ttl &lt;duration&gt; ] [ min-update-interval &lt;duration&gt; ] [ min-ns-dots &lt;integer&gt; ] [ nsip-wait-recurse &lt;boolean&gt; ] [ nsdname-wait-recurse &lt;boolean&gt; ] [ qname-wait-recurse &lt;boolean&gt; ] [ recursive-only &lt;boolean&gt; ] [ nsip-enable &lt;boolean&gt; ] [ nsdname-enable &lt;boolean&gt; ] [ dnsrps-enable &lt;boolean&gt; ] [ dnsrps-options { &lt;unspecified-text&gt; } ];
	reuseport &lt;boolean&gt;;
	root-delegation-only [ exclude { &lt;string&gt;; ... } ]; // deprecated
	root-key-sentinel &lt;boolean&gt;;
	rrset-order { [ class &lt;string&gt; ] [ type &lt;string&gt; ] [ name &lt;quoted_string&gt; ] &lt;string&gt; &lt;string&gt;; ... };
	secroots-file &lt;quoted_string&gt;;
	send-cookie &lt;boolean&gt;;
	serial-query-rate &lt;integer&gt;;
	serial-update-method ( date | increment | unixtime );
	server-id ( &lt;quoted_string&gt; | none | hostname );
	servfail-ttl &lt;duration&gt;;
	session-keyalg &lt;string&gt;;
	session-keyfile ( &lt;quoted_string&gt; | none );
	session-keyname &lt;string&gt;;
	sig-signing-nodes &lt;integer&gt;;
	sig-signing-signatures &lt;integer&gt;;
	sig-signing-type &lt;integer&gt;;
	sig-validity-interval &lt;integer&gt; [ &lt;integer&gt; ];
	sortlist { &lt;address_match_element&gt;; ... };
	stacksize ( default | unlimited | &lt;sizeval&gt; ); // deprecated
	stale-answer-client-timeout ( disabled | off | &lt;integer&gt; );
	stale-answer-enable &lt;boolean&gt;;
	stale-answer-ttl &lt;duration&gt;;
	stale-cache-enable &lt;boolean&gt;;
	stale-refresh-time &lt;duration&gt;;
	startup-notify-rate &lt;integer&gt;;
	statistics-file &lt;quoted_string&gt;;
	suppress-initial-notify &lt;boolean&gt;; // obsolete
	synth-from-dnssec &lt;boolean&gt;;
	tcp-advertised-timeout &lt;integer&gt;;
	tcp-clients &lt;integer&gt;;
	tcp-idle-timeout &lt;integer&gt;;
	tcp-initial-timeout &lt;integer&gt;;
	tcp-keepalive-timeout &lt;integer&gt;;
	tcp-listen-queue &lt;integer&gt;;
	tcp-receive-buffer &lt;integer&gt;;
	tcp-send-buffer &lt;integer&gt;;
	tkey-dhkey &lt;quoted_string&gt; &lt;integer&gt;;
	tkey-domain &lt;quoted_string&gt;;
	tkey-gssapi-credential &lt;quoted_string&gt;;
	tkey-gssapi-keytab &lt;quoted_string&gt;;
	tls-port &lt;integer&gt;;
	transfer-format ( many-answers | one-answer );
	transfer-message-size &lt;integer&gt;;
	transfer-source ( &lt;ipv4_address&gt; | * );
	transfer-source-v6 ( &lt;ipv6_address&gt; | * );
	transfers-in &lt;integer&gt;;
	transfers-out &lt;integer&gt;;
	transfers-per-ns &lt;integer&gt;;
	trust-anchor-telemetry &lt;boolean&gt;; // experimental
	try-tcp-refresh &lt;boolean&gt;;
	udp-receive-buffer &lt;integer&gt;;
	udp-send-buffer &lt;integer&gt;;
	update-check-ksk &lt;boolean&gt;;
	update-quota &lt;integer&gt;;
	use-alt-transfer-source &lt;boolean&gt;; // deprecated
	use-v4-udp-ports { &lt;portrange&gt;; ... }; // deprecated
	use-v6-udp-ports { &lt;portrange&gt;; ... }; // deprecated
	v6-bias &lt;integer&gt;;
	validate-except { &lt;string&gt;; ... };
	version ( &lt;quoted_string&gt; | none );
	zero-no-soa-ttl &lt;boolean&gt;;
	zero-no-soa-ttl-cache &lt;boolean&gt;;
	zone-statistics ( full | terse | none | &lt;boolean&gt; );
};
</pre>
</details>
<details><summary>Primary Zone Block Grammar</summary>
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
<details><summary>Recource Record for name resolution (zone "www.example.com")</summary>
<pre>
$TTL    3600
@       IN      SOA     www.example.com. root.example.com. (
                   2007010401           ; Serial
                         3600           ; Refresh [1h]
                          600           ; Retry   [10m]
                        86400           ; Expire  [1d]
                          600 )         ; Negative Cache TTL [1h]<br>
@       IN      NS      ns1.example.com.
@       IN      NS      ns2.example.com.
@       IN      MX      10 www.example.com.<br>
@       IN      AAAA    ::1
www     IN      A       192.168.0.1
ns1    	IN      A       192.168.0.2
ns2    	IN      A       192.168.0.3<br>
pop     IN      CNAME   www
mail    IN      CNAME   www
</pre>
</details>
<details><summary>RR for reverse name resolution (zone "0.168.192.in-addr.arpa")</summary>
<pre>
@       IN      SOA     www.example.com. root.example.com. (
                   2007010401           ; Serial
                         3600           ; Refresh [1h]
                          600           ; Retry   [10m]
                        86400           ; Expire  [1d]
                          600 )         ; Negative Cache TTL [1h]<br>
@       IN      NS      www.example.com.<br>
1       IN      PTR     www.example.com.
2       IN      PTR     ns1.example.com.
3	IN	PTR	ns2.example.com.
</pre>
</details>
<br>

Task list:
- Install and configure 'bind9' DNS-server
- Configure 'example.com' forward and reverce zone
- Make request to 'named' server with 'dig' or 'nslookup'

<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
