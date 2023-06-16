First of all - useful links:

- [vim.org - VIM documentation](https://www.vim.org/docs.php)
- [wikibooks.org - VIM](https://en.wikibooks.org/wiki/Vim)
- [devhints.io - VIM Cheatsheet](https://devhints.io/vim)
- [openvim.com - Interactive VIM tutorial](https://openvim.com/)
- [danielmiessler.com - Learn Vim For the Last Time](https://danielmiessler.com/study/vim/)
- [learnxinyminutes.com - Vim](https://learnxinyminutes.com/docs/vim/)
- [learnxinyminutes.com - VimL aka Vim script](https://learnxinyminutes.com/docs/vimscript/)
- `man vim`{{exec}}
- `vimtutor`{{exec}}
<br>
<details><summary>Most common scenario for using VIM</summary>
<pre>
  This is most common scenario for using VIM
    $ vim filename
      i
      Some test
      :wq
    $ cat filename
</pre>
</details>
<br>

Task list:
- Edit /etc/sshd_config
- Find 'PermitRootLogin yes' and repalce it to 'PermitRootLogin no'
- Save and exit

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ vim PermitRootLogin yes
<br>
<strong>Task 2:</strong>
  In command mode type:
    :%s/PermitRootLogin yes/PermitRootLogin no/gc
  then
    :wq
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
