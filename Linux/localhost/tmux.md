First of all - useful links:

- [github.org - TMUX homepage](https://github.com/tmux/tmux/wiki)
- [readthedocs.io - TMUX guide](https://link.org/)
- [github.org - tmux shortcuts & cheatsheet](https://gist.github.com/MohamedAlaa/2961058)
- [opensource.com - Cheatsheet for tmux](https://opensource.com/article/20/7/tmux-cheat-sheet)
- `screen -h`{{exec}}
- [gnu.org - GNU screen homepage](https://www.gnu.org/software/screen/)
- [gnu.org - GNU screen manual](https://www.gnu.org/software/screen/manual/screen.html)
- [youtube.com - How to use GNU SCREEN](https://www.youtube.com/watch?v=I4xVn6Io5Nw)

<details><summary>Lesson info and tips</summary>
<pre>
Tmux commands:
  <strong>tmux</strong> &mdash; Start tmux
  <strong>tmux new -s &lt;name&gt;</strong> &mdash; Start tmux with &lt;name&gt;
  <strong>tmux ls</strong>  &mdash; Shows the list of sessions
  <strong>tmux a #</strong> &mdash; Attach the detached-session
  <strong>tmux a -t &lt;name&gt;</strong> &mdash; Attach the detached-session to &lt;name&gt;
  <strong>tmux kill-session –t &lt;name&gt;</strong>  &mdash; Kill the session &lt;name&gt;
  <strong>tmux kill-server</strong> &mdash; Kill the tmux server
  <br>
GNU Screen commands:
  <strong>screen</strong> &mdash; Start screen
  <strong>screen -S</strong>  &mdash; Starts a named session
  <strong>screen -r &lt;name&gt;</strong> &mdash; Reattach to a screen (optionally by name)
  </strong>screen -ls | --list</strong> &mdash; Returns a list of session ids
</pre>
</details>

Task list:
- Create new window in tmux then split it horizontaly and verticaly, show numbers of panes, then switch between them
- Create new window in screen then split it horizontaly and verticaly, witch between them

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  In tmux type:
    <strong>C-d %</strong> - split horizontal 
    <strong>C-d "</strong> - split vertical 
    <strong>C-d q</strong> - show numbers of panes
    <strong>C-d q 2</strong> - switch to 2 pane
    <strong>C-d d</strong> - detach session
<br>
<strong>Task 2:</strong>
  In screen type:
    <strong>C-a |</strong> - split vertical 
    <strong>C-a c</strong> - create new window in pane
    <strong>C-a S</strong> - split horizontal
    <strong>C-a c 2</strong> - create new window in pane
    <strong>C-a Tab</strong> - switch between panes
    <strong>C-a d</strong> - detach session
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
