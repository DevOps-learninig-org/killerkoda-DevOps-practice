First of all - useful links:

MariaDB:
- [digitalocean.com - How To Install MariaDB on Ubuntu 22.04](https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-ubuntu-22-04)
- [mariadb.com - Training & Tutorials](https://mariadb.com/kb/en/training-tutorials/)
- [mariadb.com - MariaDB Administration](https://mariadb.com/kb/en/mariadb-administration/)
- [mariadb.com - SQL Statements](https://mariadb.com/kb/en/sql-statements/)

PostgreSQL:
- [digitalocean.com - How To Install PostgreSQL on Ubuntu 22.04](https://www.digitalocean.com/community/tutorials/how-to-install-postgresql-on-ubuntu-22-04-quickstart)
- [postgresql.org - Documentation](https://www.postgresql.org/docs/)
- [postgresql.org - SQL Commands](https://www.postgresql.org/docs/current/sql-commands.html)
- [postgresql.org - Wiki:Administration](https://wiki.postgresql.org/wiki/Category:Administration)

Interesting video tutorials:
- [youtube.com - MySQL Administration](https://www.youtube.com/playlist?list=PLPAVdwmqFr64vyY3u28Is_cPcuxvzXerQ)
- [youtube.com - PostgreSQL Administration](https://www.youtube.com/playlist?list=PLwxrtuGg5dNGv4jvDY3TEddn2HIn4-uF9)
<br>

Task list:
- Read ALL documentation on the links above
- Install MariaDB, create new user, database and empty table.
- Install PostgreSQL, create new user, database and empty table.

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ sudo apt update -y
  $ sudo apt install mariadb-server mariadb-client -y<br>
  $ systemctl status mariadb
  $ mysql_secure_installation
  $ mysql -h localhost -u root -p<br>
  ]> status
  ]> CREATE DATABASE IF NOT EXISTS db_test;
  ]> show databases;
  ]> use db_test;
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
