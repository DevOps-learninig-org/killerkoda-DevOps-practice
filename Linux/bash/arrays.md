First of all - useful links:

- [learnxinyminutes.com - Learn BASH in Y minutes](https://learnxinyminutes.com/docs/bash/)
- [devhints.io - Bash scripting cheatsheet #Arrays](https://devhints.io/bash#arrays)
- [tldp.org - Scripting Guide #Arrays](https://tldp.org/LDP/abs/html/arrays.html)
- [gnu.org - Arrays](https://www.gnu.org/software/bash/manual/html_node/Arrays.html)

<details><summary>Lesson info and tips</summary>
<pre>
  Defining arrays:
    Fruits=('Apple' 'Banana' 'Orange')
  Or:
    Fruits[0]="Apple"
    Fruits[1]="Banana"
    Fruits[2]="Orange"
<br>
  Destruction:
    unset -v ARRAY
    unset -v ARRAY[@]
    unset -v ARRAY[*] Destroys a complete array<br>
    unset -v ARRAY[N] Destroys the array element at index N
    unset -v ARRAY[STRING]  Destroys the array element of the associative array at index STRING
</pre>
</details>
<br>

Task list:
- Declare an array with 6 elements
- Print the first element
- Print all elements
- Print the number of elements
- Print the number of characters in third element
- Print 2 elements starting from fourth

<details><summary>Hints for the task</summary>
<pre>
  $ array=(one two three four five six)
  $ echo "${array[0]}"
  $ echo "${array[@]}"
  $ echo "${#array[@]}"
  $ echo "${#array[2]}"
  $ echo "${array[@]:3:2}"
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
