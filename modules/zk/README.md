# [ zk ]

This module contains useful function for zk wrapper (https://github.com/mickael-menu/zk)

Requirements
------------

Packages:
- bat
- zk

Environment variables
---------------------

If you are using only one notebook location you can do:
```sh
export ZK_NOTEBOOK_DIR=$HOME/git/zknotes
```

If you are using several notebook location, you can use the `zk-env` function
to update the `ZK_NOTEBOOK_DIR` with preconfigured locations.

```sh
# From bashrc
export OVM_ZK_ENV_WORK=$HOME/work/git/encrypted-notes
export OVM_ZK_ENV_PERSO=$HOME/git/mynotes
export OVM_ZK_DEFAULT_ENV="work"
export OVM_ZK_ENV=""

$ zk-env work
$ zk-env perso
```

Starship Bash prompt support
----------------------------

Using `zk-env` function, you set the current environment status into the `OVM_ZK_ENV` variable.

This variable can be used next as a prompt status to track the current zk environment.

```sh
# starship support from bashrc
if [ ! -z "${STARSHIP_SHELL}" ]; then

  function __starship_prompt_update {
    local ovm_env_prompt=""

    # ZK-ENV 
    if [ ! -z "${OVM_ZK_ENV}" ]; then
      ovm_env_prompt="\033[31;1m[zk:$OVM_ZK_ENV]\033[0m ${ovm_env_prompt}"
    fi

    if [ ! -z "${ovm_env_prompt}" ]; then
      echo -ne "${ovm_env_prompt}"
    fi
  }

  starship_precmd_user_func="__starship_prompt_update"
fi
```

## zk-aliases

This function will parse global or current configuration file and show defined aliases.
Moreover, these aliases are parsed to generate some Bash completions.

```
$ zk-aliases
e = "zk edit --interactive"
ls = "zk list --quiet --no-pager --format {{abs-path}} $@ | fzf --preview 'bat --style changes,header --color=always --line-range :500 {}' | xargs -r -I {} bat --style changes,header --color=always {}"
lt = "zk list --quiet --no-pager --format {{abs-path}} -t $@ | fzf --preview 'bat --style changes,header --color=always --line-range :500 {}' | xargs -r -I {} bat --style changes,header --color=always {}"
paths = "zk list --quiet --no-pager --format {{abs-path}} $@"
conf = '$EDITOR "$ZK_NOTEBOOK_DIR/.zk/config.toml"'
```

## zk-env

This function enables to define specific `ZK_NOTEBOOK_DIR` based on 
`OVM_ZK_ENV_<your-env>` environment variables.

```
$ env | grep ZK
OVM_ZK_ENV_WORK=/tmp/work
OVM_ZK_ENV_ME=/tmp/not_work
ZK_NOTEBOOK_DIR=/tmp/not_work
OVM_ZK_DEFAULT_ENV=me
OVM_ZK_ENV=me

$ zk-env work

$ env | grep ZK
OVM_ZK_ENV=work
ZK_NOTEBOOK_DIR=/tmp/work
```

## zk-gist-output

This function displays source code snippet from a markdown code markup.

```
$ zk-gist-output
usage: zk-gist-output <path>
```
