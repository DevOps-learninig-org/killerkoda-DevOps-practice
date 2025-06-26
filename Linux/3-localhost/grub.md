First of all - useful links:

- [gnu.org - GNU GRUB Manual](https://www.gnu.org/software/grub/manual/grub/grub.html)
- [wikipedia.org - GRUB](https://www.wikipedia.org/wiki/GNU_GRUB)
- [wikibooks.org - GRUB2](https://ru.wikibooks.org/wiki/Grub_2)
<br>
<details open><summary>Most common scenario to update grub</summary>
<pre>
    - edit /etc/default/grub
    - edit script in /etc/grub.d/40_custom
    $ sudo vi /etc/grub.d/40_custom
    $ sudo update-grub
    $ sudo reboot
</pre>
</details><br>

Task list:
- Add custom menu to your grub2 config

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ look for Lesson info and tips above
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
