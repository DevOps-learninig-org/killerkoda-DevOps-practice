First of all - useful links:

- [learnxinyminutes.com - Learn BASH in Y minutes](https://learnxinyminutes.com/docs/bash/)
- [Google - BASH functions examples](https://www.google.com/search?q=bash+functions+example)
- [devhints.io - Bash scripting cheatsheet #Functions](https://devhints.io/bash#functions)
- [gnu.org - Shell Functions](https://www.gnu.org/software/bash/manual/html_node/Shell-Functions.html)
- [tldp.org - Functions](https://tldp.org/LDP/abs/html/functions.html)
<br>
<details><summary>FUNCTION syntax</summary>
<pre>
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
  $ log_cleanup (){
     if [[ -d "$1" ]]
     then
       logger "[ INFO ] - Running Cleanup On " $1 " Older Logs - 30 days"
       find -name "$1/*.log" -type f -mtime +30 -delete
       logger "[ SUCCESS] - Cleanup Completed"
     else
       logger "[ ERROR ] - log_cleanup () : Directory path wrong... Cleanup has not happened..."
       return 1
     fi
   }
  $ log_cleanup "/home/logs/"
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
