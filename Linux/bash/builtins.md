First of all - useful links:

- [gnu.org - Bourne Shell Builtins](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Bourne-Shell-Builtins)
- [tldp.org - Internal Commands and Builtins](https://tldp.org/LDP/abs/html/internal.html)
- execute `help`{{exec}} command
<br>

Task list:
- Try all bultins
- Read help for all builtin commands using `help`{{exec}}

<details><summary>Hints for the task</summary>
<pre>
<strong>:</strong>		Returns an exit status of zero.
<strong>.</strong>		The same as source. Takes a file name as an argument, and executes the commands found in that file.
<strong>[</strong>		The same as test. Evaluate a conditional expression, and a return a value of true or false.
<strong>alias</strong>		Define, or display, the shell's command aliases.
<strong>bg</strong>		Resume a suspended job so that it runs in the background.
<strong>bind</strong>		Define, or display, the shell's key and function bindings.
<strong>break</strong>		Exit from a for, while, or select loop.
<strong>builtin</strong>		Run a builtin command, even if there is a bash function with the same name.
<strong>caller</strong>		Return the context (execution frame) of a running subroutine. Useful for performing examining the stack when debugging a bash script.
<strong>cd</strong>		Change the working directory.
<strong>command</strong>		Run an external or builtin command, even if there is a bash function with the same name.
<strong>compgen</strong>		Generate auto-completion matches for the specified command.
<strong>complete</strong>	Specify how arguments should be auto-completed.
<strong>compopt</strong>		Modify or display options for auto-completion.
<strong>continue</strong>	Skip to the next, or to another, iteration in a for, while, until, or select loop.
<strong>declare</strong>		The same as typeset. Declare, display, or assign attributes to variables.
<strong>dirs</strong>		Display the shell's directory stack, which contains remembered directories.
<strong>disown</strong>		Remove specified jobs from the current shell.
<strong>echo</strong>		Write a string to the standard output.
<strong>enable</strong>		Enable or disable builtin shell commands. Useful when other commands on the system share a builtin command name.
<strong>eval</strong>		Evaluate arguments and execute them as a command.
<strong>exec</strong>		Execute a command which replaces the current shell, without creating a new process.
<strong>exit</strong>		Exit the shell with an optional numeric exit status.
<strong>export</strong>		Designate that shell variables or functions should be passed to child processes.
<strong>fc</strong>		Edit, or execute a range of, commands from the history list.
<strong>fg</strong>		Move a job to the foreground, making it the shell's current job.
<strong>getopts</strong>		Parse arguments passed to a shell script.
<strong>hash</strong>		Forget, determine, or display the remembered locations of command executables.
<strong>help</strong>		Display brief help information about what the shell builtin commands are, and how to use them.
<strong>history</strong>		Display or modify the history list.
<strong>jobs</strong>		Display the status of all jobs.
<strong>kill</strong>		Send a signal to a process.
<strong>let</strong>		Evaluate arithmetic expressions.
<strong>local</strong>		Declare a variable with local scope in a bash function.
<strong>logout</strong>		Exit a login shell with an optional exit status.
<strong>mapfile</strong>		Read lines from a file or from standard input, and map each line to an element in an array.
<strong>popd</strong>		Remove directories from the shell's directory stack.
<strong>printf</strong>		Print formatted text to standard output.
<strong>pushd</strong>		Add directories to the shell's directory stack.
<strong>pwd</strong>		Print the absolute path name of the current working directory.
<strong>read</strong>		Read a line from a file or from standard input, split it into words, and assign each word to a variable.
<strong>readarray</strong>	Same as mapfile: read lines from a file or stdin, and assign each line to an array element.
<strong>readonly</strong>	Designate function or variables as read-only, so they cannot be changed.
<strong>return</strong>		Exit a bash function and return a value.
<strong>set</strong>		Modify the options of the current shell, changing its behavior. Display the names and values of shell functions and variables.
<strong>shift</strong>		Shift the positional parameters of the current command to the left.
<strong>shopt</strong>		Modify certain bash shell options.
<strong>source</strong>		Same as . (a period). Read commands from a file, and execute them.
<strong>test</strong>		Test file attributes and compare numeric values.
<strong>times</strong>		Display the user and system CPU times of the shell process.
<strong>trap</strong>		Specify a signal trap, to be executed when the shell receives a specific signal.
<strong>type</strong>		Determine how the shell will interpret a name: as an alias, function, builtin, file, or keyword.
<strong>typeset</strong>		The same as declare. Declare, display, or assign attributes to variables.
<strong>ulimit</strong>		Assign limits to the resources available to processes started by the shell.
<strong>umask</strong>		Set the file creation mask for files created by the shell.
<strong>unalias</strong>		Remove aliases.
<strong>unset</strong>		Remove variable or function names.
<strong>wait</strong>		Wait for a process to exit, then display its return value.
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
