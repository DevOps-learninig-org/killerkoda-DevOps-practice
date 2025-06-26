First of all - useful links:

- [ubuntu.com - User Management](https://ubuntu.com/server/docs/security-users)
- [tutorialspoint.com - Linux Admin - User Management](https://www.tutorialspoint.com/linux_admin/linux_admin_user_management.htm)
- [makeuseof.com - User Management in Linux](https://www.makeuseof.com/user-management-linux-guide/)

Manual pages:
- `man useradd`{{exec}}
<br>
<details open><summary>Most common algorythm of user creation</summary>
<pre>
    $ groupadd some_group
    $ useradd -m -g some_group -G another_group,some_group2 user1
    $ passwd user1
</pre>
</details><br>

Task list:
- Create 'random' group
- Create some user and add it to previously created group

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ groupadd random
<br>
<strong>Task 2:</strong>
  $ useradd -m -g random -G wheel user1
  $ passwd user1
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
