First of all - useful links:

- [learnxinyminutes.com - Learn BASH in Y minutes](https://learnxinyminutes.com/docs/bash/)
- [devhints.io - Bash scripting cheatsheet #Conditionals](https://devhints.io/bash#conditionals)
- [tldp.org - Introduction to if](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html)
- [tldp.org - Advanced Bash-Scripting Guide #Testing and Branching](https://tldp.org/LDP/abs/html/testbranch.html)
- [baeldung.com - Differences Between Single and Double Brackets in Bash](https://www.baeldung.com/linux/bash-single-vs-double-brackets)
<br>
<details><summary>IF-THEN-ELIF-ELSE construction</summary>
<pre>
  if [[ -z "$string" ]]; then
    echo "String is empty";
  elif [[ -n "$string" ]]; then
    echo "String is not empty";
  else
    echo "This never happens";
  fi<br>
</pre>
</details>
<details><summary>CASE construction</summary>
<pre>
  case "$variable" in
    "$condition1" )
      command...
    ;;
    "$condition2" )
      command...
    ;;
  esac
</pre>
</details>
<br>

Task list:
- Read variables `age` and `name` from stdin
- Check if `name = Steve` and `age > 18` type 'Hello, Steve!'

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ read age
  $ read name
<strong>Task 2:</strong>
  $ if [[ "$name" == "Steve" ]] && [[ "$age" -eq 15 ]]; then
  > echo "Hello, Steve!";
  > fi
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
