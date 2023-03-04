# DevOps-practice

This practice lessons created only for my personal trainig at [killercoda.com](https://killercoda.com)

Thanks for all who make it possible!

# Temlate for all lessons - lesson.md
```
First of all - useful links:

- [Useful link 1](https://link.org/)
- [Useful link 2](https://link.org/)

<details><summary>Lesson info and tips</summary>
<pre>
  Put here some info
</pre>
</details>
<br>

Task list:
- Task 1
- Task 2

<details><summary>Hints for the task</summary>
<pre>
<strong>Task 1:</strong>
  $ cmd1
  $ echo ${string:7:3}
<br>
<strong>Task 2:</strong>
  $ echo ${#string}
  $ string=
</pre>
</details>
```
# Template for cource index.md
```
{
  "title": "Title of lesson",
  "details": {
    "intro": {
      "text": "intro.md"
    },
    "steps": [
      {
        "title": "Title of step 1",
        "text": "step1/text.md",
        "verify": "step1/verify.sh"
      },
      {
        "title": "Title of step 2",
        "text": "step2/text.md",
        "verify": "step2/verify.sh"
      }
    ],
    "finish": {
      "text": "finish.md"
    }
  },
  "backend": {
    "imageid": "ubuntu"
  }
}
```
# Template for cource structure.md
```
{
  "title" : "Name of course",
  "description" : "Learn how to ....",
  "items": [
    {
      "path": "bash",
      "title": "Introduction to BASH shell",
      "description" : "Practice with BASH scripting"
    },
    {
      "path": "common",
      "title": "Common linux utilities",
      "description" : "Most common linux utilities theory and practice"
    }
  ]
}
```
