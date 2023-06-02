First of all - useful links:

- [tldp.org - Traffic Control HOWTO](https://tldp.org/HOWTO/Traffic-Control-HOWTO/overview.html)
- [lartc.org - Linux Advanced Routing & Traffic Control](https://lartc.org/)
- [lartc.org - Classful Queueing Disciplines](https://lartc.org/howto/lartc.qdisc.classful.html)
- `man tc`{{exec}}
- `tc help && tc qdisc help && tc class help && tc filter help && tc chain help && tc action help && tc monitor help && tc exec help`{{exec}}
- [youtube.com - Shaping Linux Traffic with tc](https://www.youtube.com/watch?v=Ylf4J736JIg)
<br>
<details><summary>Correlation between TC elements and Linux components</summary>
<pre>
  <strong>shaping</strong>      - The 'class' offers shaping capabilities.
  <strong>scheduling</strong>   - A 'qdisc' is a scheduler. Schedulers can be simple such as the FIFO or complex, containing classes and other qdiscs, such as HTB.
  <strong>classifying</strong>  - The 'filter' object performs the classification through the agency of a classifier object. Strictly speaking, Linux classifiers cannot exist outside of a filter.
  <strong>policing</strong>     - A 'policer' exists in the Linux traffic control implementation only as part of a filter.
  <strong>dropping</strong>     - To drop traffic requires a 'filter' with a 'policer' which uses "drop" as an action.
  <strong>marking</strong>      - The 'dsmark qdisc' is used for marking.
</pre>
</details>
<details><summary>What are QDISC and Classes</summary>
<pre>
  QDISC is short for 'queueing discipline' and it is elementary to understanding traffic control.
  Whenever the kernel needs to send a packet to an interface, it is enqueued to the qdisc configured for that interface.
  Immediately afterwards, the kernel tries to get as many packets as possible from the qdisc, for giving them to the network adaptor driver.
  <br>
  Some qdiscs can contain classes, which contain further qdiscs - traffic may then be enqueued in any of the inner qdiscs, which are within the classes.
</pre>
</details>
<details><summary>What is filter</summary>
<pre>
  A filter is used by a classful qdisc to determine in which class a packet will be enqueued.
  <br>
  The available filters are:
  <strong>basic</strong>    - Filter packets based on an ematch expression. See tc-ematch(8) for details.
  <strong>bpf</strong>      - Filter packets using (e)BPF, see tc-bpf(8) for details.
  <strong>cgroup</strong>   - Filter packets based on the control group of their process. See tc-cgroup(8) for details.
  <strong>flow, flower</strong> - Flow-based classifiers, filtering packets based on their flow (identified by selectable keys). See tc-flow(8) and tc-flower(8) for details.
  <strong>fw</strong>       - Filter based on fwmark. Directly maps fwmark value to traffic class. See tc-fw(8).
  <strong>route</strong>    - Filter packets based on routing table. See tc-route(8) for details.
  <strong>rsvp</strong>     - Match Resource Reservation Protocol (RSVP) packets.
  <strong>tcindex</strong>  - Filter packets based on traffic control index. See tc-tcindex(8).
  <strong>u32</strong>      - Generic filtering on arbitrary packet data, assisted by syntax to abstract common operations. See tc-u32(8) for details.
  <strong>matchall</strong> - Traffic control filter that matches every packet. See tc-matchall(8) for details.
</pre>
</details>
<details><summary>Classless QDISCS</summary>
<pre>
  <strong>choke</strong>      - CHOKe (CHOose and Keep for responsive flows, CHOose and Kill for unresponsive flows) is a classless qdisc designed to both identify and penalize flows that monopolize the queue. CHOKe is a variation of RED, and the configuration is similar to RED.
  <strong>codel</strong>      - CoDel (Controlled Delay) is an adaptive "no-knobs" active queue management algorithm (AQM) scheme that was developed to address the shortcomings of RED and its variants.
  <strong>[p|b]fifo</strong>  - Simplest usable qdisc, pure First In, First Out behaviour. Limited in packets or in bytes.
  <strong>fq</strong>         - Fair Queue Scheduler realises TCP pacing and scales to millions of concurrent flows per qdisc.
  <strong>fq_codel</strong>   - Fair Queuing Controlled Delay is queuing discipline that combines Fair Queuing with the CoDel AQM scheme. FQ_Codel uses a stochastic model to classify incoming packets into different flows and is used to provide a fair share of the bandwidth to all the flows using the queue. Each such flow is managed by the CoDel queuing discipline. Reordering within a flow is avoided since Codel internally uses a FIFO queue.
  <strong>fq_pie</strong>     - FQ-PIE (Flow Queuing with Proportional Integral controller Enhanced) is a queuing discipline that combines Flow Queuing with the PIE AQM scheme. FQ-PIE uses a Jenkins hash function to classify incoming packets into different flows and is used to provide a fair share of the bandwidth to all the flows using the qdisc. Each such flow is managed by the PIE algorithm.
  <strong>gred</strong>       - Generalized Random Early Detection combines multiple RED queues in order to achieve multiple drop priorities. This is required to realize Assured Forwarding (RFC 2597).
  <strong>hhf</strong>        - Heavy-Hitter Filter differentiates between small flows and the opposite, heavy-hitters. The goal is to catch the heavy-hitters and move them to a separate queue with less priority so that bulk traffic does not affect the latency of critical traffic.
  <strong>ingress</strong>    - This is a special qdisc as it applies to incoming traffic on an interface, allowing for it to be filtered and policed.
  <strong>mqprio</strong>     - The Multiqueue Priority Qdisc is a simple queuing discipline that allows mapping traffic flows to hardware queue ranges using priorities and a configurable priority to traffic class mapping. A traffic class in this context is a set of contiguous qdisc classes which map 1:1 to a set of hardware exposed queues.
  <strong>multiq</strong>     - Multiqueue is a qdisc optimized for devices with multiple Tx queues. It has been added for hardware that wishes to avoid head-of-line blocking. It will cycle though the bands and verify that the hardware queue associated with the band is not stopped prior to dequeuing a packet.
  <strong>netem</strong>      - Network Emulator is an enhancement of the Linux traffic control facilities that allow one to add delay, packet loss, duplication and more other characteristics to packets outgoing from a selected network interface.
  <strong>pfifo_fast</strong> - Standard qdisc for 'Advanced Router' enabled kernels. Consists of a three-band queue which honors Type of Service flags, as well as the priority that may be assigned to a packet.
  <strong>pie</strong>        - Proportional Integral controller-Enhanced (PIE) is a control theoretic active queue management scheme. It is based on the proportional integral controller but aims to control delay.
  <strong>red</strong>        - Random Early Detection simulates physical congestion by randomly dropping packets when nearing configured bandwidth allocation. Well suited to very large bandwidth applications.
  <strong>sfb</strong>        - Stochastic Fair Blue is a classless qdisc to manage congestion based on packet loss and link utilization history while trying to prevent non-responsive flows (i.e. flows that do not react to congestion marking or dropped packets) from impacting performance of responsive flows. Unlike RED, where the marking probability has to be configured, BLUE tries to determine the ideal marking probability automatically.
  <strong>sfq</strong>        - Stochastic Fairness Queueing reorders queued traffic so each 'session' gets to send a packet in turn.
  <strong>tbf</strong>        - The Token Bucket Filter is suited for slowing traffic down to a precisely configured rate. Scales well to large bandwidths.
</pre>
</details>
<details><summary>Classful QDISCS</summary>
<pre>
  <strong>ATM</strong>    - Map flows to virtual circuits of an underlying asynchronous transfer mode device.
  <strong>CBQ</strong>    - Class Based Queueing implements a rich linksharing hierarchy of classes. It contains shaping elements as well as prioritizing capabilities. Shaping is performed using link idle time calculations based on average packet size and underlying link bandwidth. The latter may be ill-defined for some interfaces.
  <strong>DRR</strong>    - The Deficit Round Robin Scheduler is a more flexible replacement for Stochastic Fairness Queuing. Unlike SFQ, there are no built-in queues -- you need to add classes and then set up filters to classify packets accordingly. This can be useful e.g. for using RED qdiscs with different settings for particular traffic. There is no default class -- if a packet cannot be classified, it is dropped.
  <strong>DSMARK</strong> - Classify packets based on TOS field, change TOS field of packets based on classification.
  <strong>ETS</strong>    - The ETS qdisc is a queuing discipline that merges functionality of PRIO and DRR qdiscs in one scheduler. ETS makes it easy to configure a set of strict and bandwidth-sharing bands to implement the transmission selection described in 802.1Qaz.
  <strong>HFSC</strong>   - Hierarchical Fair Service Curve guarantees precise bandwidth and delay allocation for leaf classes and allocates excess bandwidth fairly. Unlike HTB, it makes use of packet dropping to achieve low delays which interactive sessions benefit from.
  <strong>HTB</strong>    - The Hierarchy Token Bucket implements a rich linksharing hierarchy of classes with an emphasis on conforming to existing practices. HTB facilitates guaranteeing bandwidth to classes, while also allowing specification of upper limits to inter-class sharing. It contains shaping elements, based on TBF and can prioritize classes.
  <strong>PRIO</strong>   - The PRIO qdisc is a non-shaping container for a configurable number of classes which are dequeued in order. This allows for easy prioritization of traffic, where lower classes are only able to send if higher ones have no packets available. To facilitate configuration, Type Of Service bits are honored by default.
  <strong>QFQ</strong>    - Quick Fair Queueing is an O(1) scheduler that provides near-optimal guarantees, and is the first to achieve that goal with a constant cost also with respect to the number of groups and the packet length. The QFQ algorithm has no loops, and uses very simple instructions and data structures that lend themselves very well to a hardware implementation.
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
