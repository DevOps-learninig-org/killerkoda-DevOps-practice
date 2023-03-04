First of all - useful links:

- [Learn BASH in Y minutes](https://learnxinyminutes.com/docs/bash/)
- [Google - BASH functions examples](https://www.google.com/search?q=bash+functions+example)
- [Bash scripting cheatsheet #Functions](https://devhints.io/bash#functions)
- [gnu.org - Shell Functions](https://www.gnu.org/software/bash/manual/html_node/Shell-Functions.html)
- [tldp.org - Functions](https://tldp.org/LDP/abs/html/functions.html)

<details><summary>Lesson info and tips</summary>
<pre>
<strong>Syntax:</strong>
  function NAME {
    commands;
  }
<strong>Or:</strong>
  NAME () {
    commands;
  }
<strong>Call:</strong>
  NAME arg1 arg2<br>
<strong>Arguments:</strong>
  <strong>$#</strong>	Number of arguments
  <strong>$*</strong>	All positional arguments (as a single word)
  <strong>$@</strong>	All positional arguments (as separate strings)
  <strong>$1</strong>	First argument and so on
  <strong>$_</strong>	Last argument of the previous command
</pre>
</details>

Task list:
- Write a function that cleans log files in a given directory older than 30 days and gives an error if the directory does not exist

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ log_cleanup(){
  >   echo "[ INFO ] - Running Cleanup On Older Logs - 30 days"
  >   if [[ -d "$1" ]]
  >   then
  >     find -name "$1/*.log" -type f -mtime +30 -delete
  >     echo "[ SUCCESS] - Cleanup Completed"
  >   else
  >     echo "[ ERROR ] - Directory path wrong... Cleanup has not happened..."
  >     return 1
  >   fi
  > }
  $ log_cleanup "/home/logs/"
</pre>
</details>
