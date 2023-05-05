First of all - useful links:

- [learnxinyminutes.com - Learn BASH in Y minutes](https://learnxinyminutes.com/docs/bash/)
- [devhints.io - Bash scripting cheatsheet #Loops](https://devhints.io/bash#loops)
- [gnu.org - Looping Constructs](https://www.gnu.org/software/bash/manual/html_node/Looping-Constructs.html)
- [tldp.org - Loops](https://tldp.org/LDP/abs/html/loops1.html)

<details><summary>Lesson info and tips</summary>
<pre>
<strong>UNTIL construction:</strong>
  until CONDITION; do
    consequent-commands;
  done<br>
<strong>WHILE construction:</strong>
  while CONDITION; do
    consequent-commands;
  done<br>
<strong>FOR-IN construction:</strong>
  for VARIABLE in […] ; do
    commands;
  done<br>
<strong>C-FOR construction:</strong>
  for (( INIT ; CONDITION ; INCREMENT )) ; do
    commands;
  done
</pre>
</details>

Task list:
- Declare an array with 6 elements
- Print all elements each of them on new line with different loop styles

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ array=(one two three four five six)<br>
<strong>Task 2:</strong>
  $ c=0
  $ until [ $c -eq ${#array[@]} ]; do
  > echo ${array[$c]};
  > ((c++));
  > done
  $ c=0
  $ while [ $c -lt ${#array[@]} ]; do
  > echo ${array[$c]};
  > ((c++));
  > done
  $ for item in "${array[@]}"; do
  > echo "$item";
  > done
  $ for (( c=0 ; c < ${#array[@]} ; c++ )); do 
  > echo ${array[$c]};
  > done
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
