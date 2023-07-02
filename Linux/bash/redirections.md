First of all - useful links:

- [learnxinyminutes.com - Learn BASH in Y minutes](https://learnxinyminutes.com/docs/bash/)
- [devhints.io - Bash scripting cheatsheet #Miscellaneous](https://devhints.io/bash#miscellaneous)
- [gnu.org - Redirections](https://www.gnu.org/software/bash/manual/html_node/Redirections.html)
- [tldp.org - I/O Redirection](https://tldp.org/LDP/abs/html/io-redirection.html)
<br>
<details open><summary>File descriptors</summary>
<pre>
  0	is stdin
  1	is stdout
  2	is stderr
</pre>
</details>
<details open><summary>Redirect operators</summary>
<pre>
  <strong>M&gt;N</strong>
    - "M" is a file descriptor, which defaults to 1, if not explicitly set.
    - "N" is a filename.
    - File descriptor "M" is redirect to file "N."<br>
  <strong>M&gt;&N</strong>
    - "M" is a file descriptor, which defaults to 1, if not set.
    - "N" is another file descriptor.<br>
  <strong>&lt; FILENAME</strong>
    - Accept input from a file. <br>
  <strong>CMD | CMD</strong>
    - Pipe.
    - General purpose process and command chaining tool
</pre>
</details>
<br>

Task list:
- Write string to "File"
- Open "File" and assign fd 3 to it
- Read 4 characters
- Write a decimal point
- Close fd 3
  
<details><summary>Hints for the task</summary>
<pre>
  $ echo 1234567890 > File
  $ exec 3<> File
  $ read -n 4 <&3
  $ echo -n . >&3
  $ exec 3>&-
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
