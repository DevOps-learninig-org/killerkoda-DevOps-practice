First of all - useful links:

- [Manipulating Variables](https://tldp.org/LDP/abs/html/manipulatingvars.html)
- [Introduction to Variables and Parameters](https://tldp.org/LDP/abs/html/variables.html)
- [gnu.org - Shell Variables](https://www.gnu.org/software/bash/manual/html_node/Shell-Variables.html)
- [Shell Parameter Expansion](https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html)

Task list:
- Initiate variable 'string' with value '01234567890abcdefgh'
- Display values from positions 7 to 9 of a 'string' variable
- Unset 'string' variable
- Read manual and try other types of variable expansion

<details><summary>Hints for the task</summary>
<pre>
  $ string=01234567890abcdefgh
  $ echo ${string:7:3}
  $ string=
</pre>
</details>
