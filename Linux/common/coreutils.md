First of all - useful links:

- [gnu.org - GNU core utilities top page](https://www.gnu.org/software/coreutils/)
- [gnu.org - GNU Coreutils online info](https://www.gnu.org/software/coreutils/manual/html_node/index.html)
- `info coreutils`{{exec}}
- [wikipedia.org - util-linux](https://en.wikipedia.org/wiki/Util-linux)
<br>
Source code:
- [util-linux](https://github.com/util-linux/util-linux)
- [GNU Coreutils](https://github.com/coreutils/coreutils)
<br>
<details open><summary>Basic 'info' command keys</summary>
<pre>
  <strong>H</strong>    - Open or close help window.
  <strong>q</strong>    - Quit Info.
  <strong>Home</strong> - Go to the beginning of current node.
  <strong>End</strong>  - Go to the end of current node.
  <strong>TAB</strong>  - Go to the next hypertext link.
  <strong>Enter</strong> - Follow the hypertext link under the cursor.
  <strong>l</strong>    - Go back to the last node.
  <strong>[</strong>    - Go to the previous node in the document.
  <strong>]</strong>    - Go to the next node in the document.
  <strong>t</strong>    - Go to the top node of this document.
  <strong>/</strong>    - Read a string and search for it.
  <strong>Ctrl-x n</strong> - Repeat last search in the same direction.
</pre>
</details>
<details open><summary>Sorted list of GNU Coreutils</summary>
<pre>
Output of entire files       <strong>cat tac nl od base32 base64</strong>
Formatting file contents     <strong>fmt pr fold</strong>
Output of parts of files     <strong>head tail split csplit</strong>
Summarizing files            <strong>wc sum cksum b2sum md5sum sha1sum sha2</strong>
Operating on sorted files    <strong>sort shuf uniq comm ptx tsort</strong>
Operating on fields          <strong>cut paste join</strong>
Operating on characters      <strong>tr expand unexpand</strong>
Directory listing            <strong>ls dir vdir dircolors</strong>
Basic operations             <strong>cp dd install mv rm shred</strong>
Special file types           <strong>mkdir rmdir unlink mkfifo mknod ln link readlink</strong>
Changing file attributes     <strong>chgrp chmod chown touch</strong>
Disk usage                   <strong>df du stat sync truncate</strong>
Printing text                <strong>echo printf yes</strong>
Conditions                   <strong>false true test expr</strong>
Redirection                  <strong>tee</strong>
File name manipulation       <strong>dirname basename pathchk mktemp realpath</strong>
Working context              <strong>pwd stty printenv tty</strong>
User information             <strong>id logname whoami groups users who</strong>
System context               <strong>date arch nproc uname hostname hostid uptime</strong>
SELinux context              <strong>chcon runcon</strong>
Modified command invocation  <strong>chroot env nice nohup stdbuf timeout</strong>
Process control              <strong>kill</strong>
Delaying                     <strong>sleep</strong>
Numeric operations           <strong>factor numfmt seq</strong>
</pre>
</details><br>

Task list:
- Learn more about GNU coreutils and util-linux
- Try to execute all GNU Coreutils and util-linux tools

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ info coreutils
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
