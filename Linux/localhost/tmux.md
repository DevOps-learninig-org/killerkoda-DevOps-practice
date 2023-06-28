First of all - useful links:

- [github.org - TMUX homepage](https://github.com/tmux/tmux/wiki)
- [readthedocs.io - TMUX guide](https://link.org/)
- [github.org - tmux shortcuts & cheatsheet](https://gist.github.com/MohamedAlaa/2961058)
- [opensource.com - Cheatsheet for tmux](https://opensource.com/article/20/7/tmux-cheat-sheet)
- [learnxinyminutes.com - TMUX](https://learnxinyminutes.com/docs/tmux/)
- `screen -h`{{exec}}
- [gnu.org - GNU screen homepage](https://www.gnu.org/software/screen/)
- [gnu.org - GNU screen manual](https://www.gnu.org/software/screen/manual/screen.html)

Interesting video tutorials:
- [youtube.com - How to use GNU SCREEN](https://www.youtube.com/watch?v=I4xVn6Io5Nw)
<br>
<details><summary>Tmux commands</summary>
<pre>
  <strong>tmux</strong> &mdash; Start tmux
  <strong>tmux new -s &lt;name&gt;</strong> &mdash; Start tmux with &lt;name&gt;
  <strong>tmux ls</strong>  &mdash; Shows the list of sessions
  <strong>tmux a #</strong> &mdash; Attach the detached-session
  <strong>tmux a -t &lt;name&gt;</strong> &mdash; Attach the detached-session to &lt;name&gt;
  <strong>tmux kill-session –t &lt;name&gt;</strong>  &mdash; Kill the session &lt;name&gt;
  <strong>tmux kill-server</strong> &mdash; Kill the tmux server
</pre>
</details>
<details><summary>GNU Screen commands</summary>
<pre>
  <strong>screen</strong> &mdash; Start screen
  <strong>screen -S</strong>  &mdash; Starts a named session
  <strong>screen -r &lt;name&gt;</strong> &mdash; Reattach to a screen (optionally by name)
  </strong>screen -ls | --list</strong> &mdash; Returns a list of session ids
</pre>
</details><br>

Task list:
- Create new window in tmux then split it horizontaly and verticaly, show numbers of panes, then switch between them
- Create new window in screen then split it horizontaly and verticaly, witch between them

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  In tmux type:
    <strong>Ctrl-b %</strong> - split horizontal 
    <strong>Ctrl-b "</strong> - split vertical 
    <strong>Ctrl-b q</strong> - show numbers of panes
    <strong>Ctrl-b q 2</strong> - switch to 2 pane
    <strong>Ctrl-b d</strong> - detach session
<br>
<strong>Task 2:</strong>
  In screen type:
    <strong>Ctrl-a |</strong> - split vertical 
    <strong>Ctrl-a c</strong> - create new window in pane
    <strong>Ctrl-a S</strong> - split horizontal
    <strong>Ctrl-a c 2</strong> - create new window in pane
    <strong>Ctrl-a Tab</strong> - switch between panes
    <strong>Ctrl-a d</strong> - detach session
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
