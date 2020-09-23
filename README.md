OVM : my simple Bash functions loader
=====================================

ovm stands for overmind.

In some universe (like Starcraft), the overmind is the master controlling everything.

This project is a Bash functions loader that handles all my Bash functions wrapper.

Why ?
-----

This project aims to be simple.

It enables to:

- Centralize scripts execution (regardless their locations)
- Create scripts shortcuts
- Loading only needed Bash functions
- Have a lightweight .bashrc
- Separate professionnal workflow with personnal workflow
- Organize your workspace
- ...

Setup
-----

Steps to perform:

- git clone this repository
- define to your `.bashrc` the variable `OVM_PATH` and `OVM_MODULES_PATH` (for custom modules)
- source the global `ovm` bash function

```
$ cat ~/.bashrc
...
export OVM_PATH="$HOME/perso/git/ovm"
export OVM_MODULES_PATH="$OVM_PATH/modules:$HOME/work/git/ovm-modules"
source $OVM_PATH/ovm
...
```
By default, if no `OVM_MODULES_PATH` environment variable is defined,
the value will be `export OVM_MODULES_PATH="$OVM_PATH/modules"`.

If you don't want to use the default modules, you can just do 
`OVM_MODULES_PATH="$HOME/my/custom/ovm-modules"`.

## Command

Help
```
OVM
===

This project is a dynamic Bash functions loader.

Commands
--------
ovm <command>
    config    show environment variables defined/used in modules
    env       show loaded OVM environment variables
    info      show module information in README.md (if available)
    load      load all functions in a module
    ls        list available modules and functions

```

Listing modules
```
$ ovm ls

~/perso/git/ovm/modules
fsalias
  go
  save
tor
  vt
  vtchecksum

```

Loading a module
```
$ ovm load tor
$ tor-vt<tab>
tor-vt          tor-vtchecksum
```

Info about a module
```
 ovm info tor

   [ tor ]                                                                                          
                                                                                                    
  This module contains different scripts needing a Tor support.                                     
                                                                                                    
  ## Requirements:                                                                                  
                                                                                                    
  • Virus Total API key                                                                             
  • Proxychains installed and configured                                                            
  • Tor installed and configured                                                                    
                                                                                                    
  ## tor-vt                                                                                         
                                                                                                    
  Compute a file checksum and query VT API via curl (using tor)                                     
                                                                                                    
  The scan results can be found in  /tmp/torvt                                                      
                                                                                                    
    $ tor-vt <sample>                                                                               
                                                                                                    
  ## tor-vtchecksum                                                                                 
                                                                                                    
  Query VT API via curl (using tor) based on a SHA256 file checksum                                 
                                                                                                    
  The scan results can be found in  /tmp/torvt                                                      
                                                                                                    
    $ tor-vtchecksum <SHA256>                                                                       

```

Modules
-------

### Directory structure

```
└── modules
    └── fsalias
        ├── functions
        │   ├── go
        │   └── save
        ├── loader
        └── README.md
```

A module is a directory (for example here named `fsalias`) containing a:
- **functions** directory with Bash functions to load
- **loader** file defining which functions to load
- **README.md** file describing module features (aka module manual)

### Also

Functions named like **<something>.disabled** will not be loaded.
By doing `ovm ls`, you will see them in `red`.

License
-------
`ovm` is available under the [Beerware](http://en.wikipedia.org/wiki/Beerware) license.

If we meet some day, and you think this stuff is worth it, you can buy me a beer in return.
