First of all - useful links:

- [Introduction to Variables and Parameters](https://tldp.org/LDP/abs/html/variables.html)
- [gnu.org - Shell Variables](https://www.gnu.org/software/bash/manual/html_node/Shell-Variables.html)
- [Shell Parameter Expansion](https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html)
- [Manipulating Variables](https://tldp.org/LDP/abs/html/manipulatingvars.html)

<details><summary>List of builtin variables</summary>
<pre>
<strong>$* / $@</strong>		Function/script positional parameters (arguments). Expand as follows:
  $* and $@ are the same as $1 $2 ... (note that it generally makes no sense to leave those unquoted)
  "$*" is the same as "$1 $2 ..." 1
  "$@" is the same as "$1" "$2" ...
<strong>$#</strong>		Number of positional parameters passed to the script or function
<strong>$!</strong>		Process ID of the last (righ-most for pipelines) command in the most recently job put into the background (note that it's not necessarily the same as the job's process group ID when job control is enabled)
<strong>$$</strong>		ID of the process that executed bash
<strong>$?</strong>		Exit status of the last command
<strong>$n</strong>		Positional parameters, where n=1, 2, 3, ..., 9
<strong>${n}</strong>		Positional parameters (same as above), but n can be > 9
<strong>$0</strong>		In scripts, path with which the script was invoked; with bash -c 'printf "%s\n" "$0"' name args': name (the first argument after the inline script), otherwise, the argv[0] that bash received.
<strong>$_</strong>		Last field of the last command
<strong>$IFS</strong>		Internal field separator
<strong>$PATH</strong>		PATH environment variable used to look-up executables
<strong>$OLDPWD</strong>		Previous working directory
<strong>$PWD</strong>		Present working directory
<strong>$FUNCNAME</strong>	Array of function names in the execution call stack
<strong>$BASH_SOURCE</strong>	Array containing source paths for elements in FUNCNAME array. Can be used to get the script path.
<strong>$BASH_ALIASES</strong>	Associative array containing all currently defined aliases
<strong>$BASH_REMATCH</strong>	Array of matches from the last regex match
<strong>$BASH_VERSION</strong>	Bash version string
<strong>$BASH_VERSINFO</strong>	An array of 6 elements with Bash version information
<strong>$BASH</strong>		Absolute path to the currently executing Bash shell itself (heuristically determined by bash based on argv[0] and the value of $PATH; may be wrong in corner cases)
<strong>$BASH_SUBSHELL</strong>	Bash subshell level
<strong>$UID</strong>		Real (not effective if different) User ID of the process running bash
<strong>$PS1</strong>		Primary command line prompt; see Using the PS* Variables
<strong>$PS2</strong>		Secondary command line prompt (used for additional input)
<strong>$PS3</strong>		Tertiary command line prompt (used in select loop)
<strong>$PS4</strong>		Quaternary command line prompt (used to append info with verbose output)
<strong>$RANDOM</strong>		A pseudo random integer between 0 and 32767
<strong>$REPLY</strong>		Variable used by read by default when no variable is specified. Also used by select to return the user-supplied value
<strong>$PIPESTATUS</strong>	Array variable that holds the exit status values of each command in the most recently executed foreground pipeline.
</pre>
</details>
<br>

Task list:
- Initiate variable 'string' with value '01234567890abcdefgh'
- Display values from positions 7 to 9 of a 'string' variable
- Display 'string' value length
- Unset 'string' variable
- Read manual and try other types of variable expansion

<details><summary>Hints for the task</summary>
<pre>
  $ string=01234567890abcdefgh
  $ echo ${string:7:3}
  $ echo ${#string}
  $ string=
</pre>
</details>
