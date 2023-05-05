First of all - useful links:

- [learnxinyminutes.com - Learn BASH in Y minutes](https://learnxinyminutes.com/docs/bash/)
- [gnu.org - Job Control](https://www.gnu.org/software/bash/manual/html_node/Job-Control.html)
- [tldp.org - Job Control Commands](https://tldp.org/LDP/abs/html/x9644.html)

<details><summary>Lesson info and tips</summary>
<pre>
Job Control Builtins:
  bg [jobspec …]
      Resume each suspended job jobspec in the background.
  fg [jobspec]
      Resume the job jobspec in the foreground and make it the current job. 
  jobs
      Lists the active jobs.
  kill [-s sigspec] [-n signum] [-sigspec] jobspec or pid
      Send a signal specified by sigspec or signum to the process named by job 
  wait [-fn] [-p varname] [jobspec or pid …]
      Wait until the child process specified by each process ID pid or job specification jobspec exits and return the exit status of the last command waited for. 
  disown [-ar] [-h] [jobspec … | pid … ]
      Remove each jobspec from the table of active jobs. 
  suspend [-f]
</pre>
</details>
<br>

Task list:
- Create sliping process and detach it
- List all jobs
- Make sliping process current
- Kill this process

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ sleep 10000 &
<br>
<strong>Task 2:</strong>
  $ jobs
  $ fg 1
  Ctrl+C
  $ sleep 10000 &
  $ jobs -l
  $ kill 10708
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
