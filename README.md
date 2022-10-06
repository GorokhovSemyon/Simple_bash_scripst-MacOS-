# The simplest bash scripts for Mac OS

![Picture](https://github.com/GorokhovSemyon/Simple_bash_scripst-MacOS-/blob/develop/materials/bin_bash.png)

## Introduction

Bash scripts can significantly simplify the processing and making changes to text and binary files, as well as make it possible to reflect these changes in the log file, which is implemented in the simplest scripts that are in src/.

## Instructions for use

It is important to note that these scripts were written specifically for macOS, the syntax in other operating systems is insignificant, but different.
To work with these scripts, you should clone them, after which you will be able
to use them.

Script edit.sh designed to search for and then replace the lines in the file with the specified ones.

The command to use the script edit.sh:

```
$ ./edit.sh <the path to the file> <the string to be found> <the string to replace>
```

Script log_analyzer.sh it is designed to analyze the log file (the total number of records, the number of unique files and the number of changes that led to a change in the hash file).

The command to use the script log_analyzer.sh:

```
$ ./log_analyzer.sh <the path to the file>
```
