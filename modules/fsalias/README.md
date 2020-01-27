# [ fsalias ]

This module contains functions related to symbolic links
used as shortcuts (stored by default in `$HOME/.fs_aliases`).

Requirements:
-------------

- Create the directory `$HOME/.fs_aliases` or whatever
- Edit the corresponding variable named `OVM_FSALIAS_ROOT`

## fsalias-go (autocompletion enabled)

Jump to the directory location pointed by the symbolic links.

```shell
$ ls $HOME/.fs_aliases
tmp tmp1 tmp2 ...

$ ls -l $HOME/.fs_aliases/tmp
lrwxrwxrwx 1 test test 32 Jan  3 13:10 tmp -> /tmp/test/this/module

$ pwd
/home/test

$ fsalias-go tmp

$ pwd
/tmp/test/this/module
```

## fsalias-save

Add new symbolic links of the current location `$PWD` in `$OVM_FSALIAS_ROOT`.

```shell
$ pwd
/tmp

# Saving alias with default name
$ fsalias-save
$ ls -l $OVM_FSALIAS_ROOT
...
lrwxrwxrwx 1 test test 32 Jan  3 13:10 tmp -> /tmp/
... 

# Saving alias with custom name
$ fsalias-save toto
$ ls -l $OVM_FSALIAS_ROOT
...
lrwxrwxrwx 1 test test 32 Jan  3 13:10 toto -> /tmp/
... 

