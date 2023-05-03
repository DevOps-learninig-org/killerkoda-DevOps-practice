First of all - useful links:

- [github.org - TMUX homepage](https://github.com/tmux/tmux/wiki)
- [readthedocs.io - TMUX guide](https://link.org/)
- [github.org - tmux shortcuts & cheatsheet](https://gist.github.com/MohamedAlaa/2961058)

<details><summary>Lesson info and tips</summary>
<pre>
Tmux commands:
  <strong>tmux</strong>          start tmux
  <strong>tmux new -s <name></strong>	start tmux with <name>
  <strong>tmux ls</strong>	 shows the list of sessions
  <strong>tmux a #</strong>	 attach the detached-session
  <strong>tmux a -t <name></strong>	  attach the detached-session to <name>
  <strong>tmux kill-session –t</strong> <name>	kill the session <name>
  <strong>tmux kill-server</strong>	  kill the tmux server
  

</pre>
</details>

Task list:
- Create new window in tmux then split it horizontaly and verticaly, show numbers of panes, then switch between them
- Task 2

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  In tmux type:
    <strong>C-d %</strong> - split horizontal 
    <strong>C-d "</strong> - split vertical 
    <strong>C-d q</strong> - show numbers of panes
    <strong>C-d q 2</strong> - switch to 2 pane
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
