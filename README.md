# DevOps-practice

This practice lessons created only for my personal trainig at [killercoda.com](https://killercoda.com)

- [1 - Linux administration course @killercoda.com](https://killercoda.com/kodxxl/course/Linux) - Realized
- 2 - Linux System Perfomance @killerkoda - Under construction
- 3 - DevOps/SRE course @killercoda.com - Under construction
- 4 - Backend course @killercoda.com - Under construction
- 5 - Frontend cource @killerkoda - Under construction

Thanks for all who make it possible!

# Temlate for all lessons - lesson.md
```
First of all - useful links:

- []()

Interesting video tutorials:
- [youtube.com - ]()

Manual pages:
- `man `{{exec}}
<br>
<details open><summary>Lesson info and tips</summary>
<pre>
  <strong></strong> -
</pre>
</details>
<details open><summary>Other tips</summary>
<pre>
  <strong></strong> -
</pre>
</details>
<br>

Task list:
- Read ALL documentation on the links above and watch videos
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
<br>
<details><summary>If You have read all and understood</summary>
<pre>
`touch IReadAllAndUndnderstood`{{exec}}
</pre>
```
# Template for intro.md
```
Welcome to %SCENARIO_NAME% scenario!

Read some useful articles before:
- [Useful link 1](https://link.org/)
- `some cli command`{{exec}}

And watch some videos:
- [youtube.com - ](https://link.org/)
- [youtube.com - ](https://link.org/)

Now, lets start!
```
# Template for finish.md
```
You have finished this scenario!

Read again useful articles to consolidate your knowledge:
- [Useful link 1](https://link.org/)
- `some cli command`{{exec}}

And watch some videos:
- [youtube.com - ](https://link.org/)
- [youtube.com - ](https://link.org/)

Pass this steps [ONE MORE TIME](/kodxxl/course/Linux/%LINK_TO_THIS%) or see you in the [NEXT SCENARIO](/kodxxl/course/Linux/%LINK_TO_NEXT%)!
```
# Template for scenario index.json
```
{
  "title": "Title of scenario",
  "details": {
    "intro": {
      "foreground": "scripts/foreground.sh",
      "text": "service/intro.md"
    },
    "steps": [
      {
        "title": "1/2 Title [00:00]",
        "text": "step1_text.md",
        "verify": "scripts/check.sh"
      },{
        "title": "2/2 Title [00:00]",
        "text": "step2_text.md",
        "verify": "scripts/check.sh"
      }
    ],
    "finish": {
      "text": "service/finish.md"
    }
  },
  "backend": {
    "imageid": "ubuntu"
  }
}
```
# Template for cource structure.json
```
{
  "title" : "Name of course",
  "description" : "Learn how to ....",
  "items": [
    {
      "path": "bash",
      "title": "1 - Introduction to BASH shell",
      "description" : "Practice with BASH scripting"
    },{
      "path": "common",
      "title": "2 - Common linux utilities",
      "description" : "Most common linux utilities theory and practice"
    }
  ]
}
```
