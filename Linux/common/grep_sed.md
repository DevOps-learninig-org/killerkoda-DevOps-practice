First of all - useful links:

- [Learning Sed Is Beneficial For Linux Users](https://www.youtube.com/watch?v=EACe7aiGczw)
- [Linux Crash Course - The sed Command](https://www.youtube.com/watch?v=nXLnx8ncZyE)
- [tutorialspoint.com - SED tutorial](https://www.tutorialspoint.com/sed/index.htm)
- [digitalocean.com - The Basics of Using the Sed](https://www.digitalocean.com/community/tutorials/the-basics-of-using-the-sed-stream-editor-to-manipulate-text-in-linux)
- [gnu.org - sed, a stream editor](https://www.gnu.org/software/sed/manual/sed.html)
- `man grep`{{exec}}
- `man sed`{{exec}}

<details><summary>Lesson info and tips</summary>
<pre>
  sed - stream editor
SYNOPSIS:
  sed [-n] script [file...]
  sed [-n] -e script [-e script]... [-f script_file]... [file...]
  sed [-n] [-e script]... -f script_file [-f script_file]... [file...]
<br>
  grep - search a file for a pattern
SYNOPSIS:
  grep [-E|-F] [-c|-l|-q] [-insvx] -e pattern_list [-e pattern_list]... [-f pattern_file]... [file...]
  grep [-E|-F] [-c|-l|-q] [-insvx] [-e pattern_list]... -f pattern_file [-f pattern_file]... [file...]
  grep [-E|-F] [-c|-l|-q] [-insvx] pattern_list [file...]
</pre>
</details>

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
