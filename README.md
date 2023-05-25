# DevOps-practice

This practice lessons created only for my personal trainig at [killercoda.com](https://killercoda.com)

Thanks for all who make it possible!

# Temlate for all lessons - lesson.md
```
First of all - useful links:

- [Useful link 1](https://link.org/)
- `some cli command`{{exec}}

<details><summary>Lesson info and tips</summary>
<pre>
  <strong></strong> -
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
- [Useful link 1](https://link.org/)
- [Useful link 1](https://link.org/)

Now, lets start!
```
# Template for finish.md
```
You have finished this scenario!

Read again useful articles to consolidate your knowledge:
- [Useful link 1](https://link.org/)
- `some cli command`{{exec}}

And watch some videos:
- [Useful link 1](https://link.org/)
- [Useful link 1](https://link.org/)

See you in the [next  scenario](/kodxxl/course/Linux/%LINK_TO_NEXT%)!
```
# Template for scenario index.md
```
{
  "title": "Title of scenario",
  "details": {
    "intro": {
      "text": "intro.md"
    },
    "steps": [
      {
        "title": "1/3 Title of step 1",
        "text": "step1/text.md",
        "verify": "step1/verify.sh"
      },{
        "title": "2/3 Title of step 2",
        "text": "step2/text.md",
        "verify": "step2/verify.sh"
      },{
        "title": "3/3 Title of step 3",
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
