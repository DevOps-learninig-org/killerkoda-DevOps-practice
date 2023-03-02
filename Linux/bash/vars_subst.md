First of all - useful links:

- [Introduction to Variables and Parameters](https://tldp.org/LDP/abs/html/variables.html)
- [gnu.org - Shell Variables](https://www.gnu.org/software/bash/manual/html_node/Shell-Variables.html)
- [Shell Parameter Expansion](https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html)
- [Manipulating Variables](https://tldp.org/LDP/abs/html/manipulatingvars.html)

<details><summary>List of builtin variables</summary>
<pre>
- $* / $@		Function/script positional parameters (arguments). Expand as follows:
  $* and $@ are the same as $1 $2 ... (note that it generally makes no sense to leave those unquoted)
  "$*" is the same as "$1 $2 ..." 1
  "$@" is the same as "$1" "$2" ...
- $#		Number of positional parameters passed to the script or function
- $!		Process ID of the last (righ-most for pipelines) command in the most recently job put into the background (note that it's not necessarily the same as the job's process group ID when job control is enabled)
- $$		ID of the process that executed bash
- $?		Exit status of the last command
- $n		Positional parameters, where n=1, 2, 3, ..., 9
- ${n}	Positional parameters (same as above), but n can be > 9
- $0		In scripts, path with which the script was invoked; with bash -c 'printf "%s\n" "$0"' name args': name (the first argument after the inline script), otherwise, the argv[0] that bash received.
- $_		Last field of the last command
- $IFS	Internal field separator
- $PATH	PATH environment variable used to look-up executables
- $OLDPWD	Previous working directory
- $PWD	Present working directory
- $FUNCNAME	Array of function names in the execution call stack
- $BASH_SOURCE	Array containing source paths for elements in FUNCNAME array. Can be used to get the script path.
- $BASH_ALIASES	Associative array containing all currently defined aliases
- $BASH_REMATCH	Array of matches from the last regex match
- $BASH_VERSION	Bash version string
- $BASH_VERSINFO	An array of 6 elements with Bash version information
- $BASH	Absolute path to the currently executing Bash shell itself (heuristically determined by bash based on argv[0] and the value of $PATH; may be wrong in corner cases)
- $BASH_SUBSHELL	Bash subshell level
- $UID	Real (not effective if different) User ID of the process running bash
- $PS1	Primary command line prompt; see Using the PS* Variables
- $PS2	Secondary command line prompt (used for additional input)
- $PS3	Tertiary command line prompt (used in select loop)
- $PS4	Quaternary command line prompt (used to append info with verbose output)
- $RANDOM	A pseudo random integer between 0 and 32767
- $REPLY	Variable used by read by default when no variable is specified. Also used by select to return the user-supplied value
- $PIPESTATUS	Array variable that holds the exit status values of each command in the most recently executed foreground pipeline.
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
