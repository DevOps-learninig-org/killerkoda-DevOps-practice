First of all - useful links:

- [tutorialspoint.com - SED tutorial](https://www.tutorialspoint.com/sed/index.htm)
- [digitalocean.com - The Basics of Using the Sed](https://www.digitalocean.com/community/tutorials/the-basics-of-using-the-sed-stream-editor-to-manipulate-text-in-linux)
- [gnu.org - sed, a stream editor](https://www.gnu.org/software/sed/manual/sed.html)
- [gnu.org - sed commands](https://www.gnu.org/software/sed/manual/html_node/sed-commands-list.html)
- `man grep`{{exec}}
- `man sed`{{exec}}
- [youtube.com - Learning Sed Is Beneficial For Linux Users](https://www.youtube.com/watch?v=EACe7aiGczw)
- [youtube.com - Linux Crash Course - The sed Command](https://www.youtube.com/watch?v=nXLnx8ncZyE)
<br>
<details><summary>Lesson info and tips</summary>
<pre>
  <b>sed</b> - stream editor
<u>SYNOPSIS:</u>
  sed [-n] script [file...]
  sed [-n] -e script [-e script]... [-f script_file]... [file...]
  sed [-n] [-e script]... -f script_file [-f script_file]... [file...]
<br>
  <b>grep</b> - search a file for a pattern
<u>SYNOPSIS:</u>
  grep [-E|-F] [-c|-l|-q] [-insvx] -e pattern_list [-e pattern_list]... [-f pattern_file]... [file...]
  grep [-E|-F] [-c|-l|-q] [-insvx] [-e pattern_list]... -f pattern_file [-f pattern_file]... [file...]
  grep [-E|-F] [-c|-l|-q] [-insvx] pattern_list [file...]
</pre>
</details><br>

Task list:
- Use the grep utility to print the line number containing 'PasswordAuthentication' in <b>/etc/ssh/ssh_config</b>
- Reverse the "PasswordAuthentication yes" setting with SED, and uncomment it

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ grep -n PasswordAuthentication /etc/ssh/ssh_config
  25:PasswordAuthentication yes
  $ sed -i '25c PasswordAuthentication no' /etc/ssh/ssh_config
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
