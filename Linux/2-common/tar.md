First of all - useful links:

- [gnu.org - GNU Tar](https://www.gnu.org/software/tar/)
- [gnu.org - GNU tar: an archiver tool](https://www.gnu.org/software/tar/manual/tar.html)
- [cheat.sh - Tar cheatsheet](https://cheat.sh/tar)

Manual pages:
- `tar --help`{{exec}}
- `man tar`{{exec}}
<br>
<details><summary>TAR command syntax</summary>
<pre>tar [-options] &lt;name of the tar archive&gt; [files or directories which to add into archive]
  <strong>-A, --catenate, --concatenate</strong> — append tar files to an archive
  <strong>-c, --create</strong>         — create a new archive
  <strong>-a, --auto-compress</strong>  — additionally compress the archive with a compressor which 
                                          will be automatically determined by the file name extension
                                          of the archive. If the archive's name ends with *.tar.gz
                                          then use gzip, if *.tar.xz then use xz, *.tar.zst for Zstandard
  <strong>-r, --append</strong>         — append files to the end of an archive
  <strong>-x, --extract, --get</strong> — extract files from an archive
  <strong>-f, --file</strong>           — specify the archive's name
  <strong>-t, --list</strong>           — show a list of files and folders in the archive
  <strong>-v, --verbose</strong>        — show a list of processed files
</pre>
</details>  
<details open><summary>Basic usage</summary>
<pre> 
  <strong>$ tar -cvf archive.tar README.txt src</strong>
      Create an archive file archive.tar from the file README.txt and directory src.<br>
  <strong>$ tar -xvf archive.tar</strong>
      Extract contents for the archive.tar into the current directory.<br>
  <strong>$ tar -cavf archive.tar.gz README.txt src</strong>
      Create an archive file archive.tar.gz from the file README.txt and directory src and compress it with gzip.<br>
  <strong>$ tar -xvf archive.tar.gz</strong>
      Extract contents for the archive.tar.gz into the current directory.
</pre>
</details><br>

Task list:
- Create compressed archive automatically based on result file extension
- Decompress this archive into the ~/tmp/ folder

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ echo "Content" | tee file{00..10}.txt
  $ tar -caf files.xz file??.txt
  $ tar -tvf files.xz
<br>
<strong>Task 2:</strong>
  $ mkdir ~/tmp/
  $ tar -xf files.xz -C ~/tmp/
</pre>
</details>
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
