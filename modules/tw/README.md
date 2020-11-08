# [ tw ]

This module is a TaskWarrior wrapper to structure projects' workflow

A case is the subject, project or wathever you are working on, 
and need to be structured with tasks.

Requirements:
-------------

- taskwarrior installed
- Timeline configuration in taskrc
```
report.timeline.labels=Completed,Description
report.timeline.columns=end,description.desc
report.tiemeline.description=Completed tasks
report.timeline.filter=status:completed
report.timeline.sort=end+
```

## tw-about

Display first lines of a case `notes.txt` to quickly see a case context.

```
$ tw-about [ <casename> ]
```

## tw-cases

Show and filter opened cases. The default applied filter is "+case".
A filter is just a Taskwarrior tag.

```
$ tw-cases [ <filter> ]
```

## tw-env

Show environment variables for this module.

```
$ tw-env
```

## tw-go

Select and jump to a created or current active case.

```
$ tw-go [ <casename> ] 
```

## tw-ls

List uncompleted task based a selectionned case.
A case can be chosen from WCASE environment variable or has a function parameter.

```
$ tw-ls [ <casename> ] [ <filter> ]
```

## tw-new

Create a new case with directories and task templates.

```
$ tw-new
New case name: toto
Casetypes [default]: 
Use casetypes in: /tmp/ovm/modules/tw/functions/casetypes (yes/no) ? [no] yes
The project 'toto' has changed.  Project 'toto' is 0% complete (1 task remaining).
The project 'toto' has changed.  Project 'toto' is 0% complete (2 of 2 tasks remaining).
The project 'toto' has changed.  Project 'toto' is 0% complete (3 of 3 tasks remaining).
```

## tw-path

Show the current case path.

```
$ tw-path
```

## tw-timeline

Show completed tasks with a custom report template.

```
$ tw-timeline [ <casename> ] [ <filter> ]
```
