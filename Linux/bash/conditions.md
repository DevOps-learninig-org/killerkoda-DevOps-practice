First of all - useful links:

- [Learn BASH in Y minutes](https://learnxinyminutes.com/docs/bash/)
- [Bash scripting cheatsheet #Conditionals](https://devhints.io/bash#conditionals)
- [The conditional expression](https://wiki.bash-hackers.org/syntax/ccmd/conditional_expression)
- [Introduction to if](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html)
- [Advanced Bash-Scripting Guide #Testing and Branching](https://tldp.org/LDP/abs/html/testbranch.html)
- [The classic `test` command](https://wiki.bash-hackers.org/commands/classictest#file_tests)

<details><summary>Lesson info and tips</summary>
<pre>
Syntax of BASH brancing and test constructions:<br>
<strong>IF-THEN-ELIF-ELSE construction:</strong><br>
  if [[ -z "$string" ]]; then
    echo "String is empty";
  elif [[ -n "$string" ]]; then
    echo "String is not empty";
  else
    echo "This never happens";
  fi<br>
<strong>CASE construction:</strong><br>
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
