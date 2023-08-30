# My little prompt 

This repo holds a minimalistic, sourceable bash environment packing custom configurations, aliases, completions... etc. Invoking this environment will NOT make any write change to your filesystem outside this directory.  

Strongly inspired from [oh-my-bash](https://github.com/ohmybash/oh-my-bash).


## Dependencies

Not really dependencies, but tooling to be used:

```
sudo apt install  \
    tmux          \
    tmuxinator    \
    vim           \
    sudo          \
    ;
snap install code --classic
```

## Usage

To enter a subshell with all the packed tooling, simply run  `./mlp`. You may add the repo root to `$PATH` or symlink `mlp` into a `$PATH` dir for system-wide access.

To include any of the packed components in your current shell (no subshell), simply `source` them. In this case, you should have `$__MLP_PATH` set to the root of this repo.

## Contents

### Aliases

Useful aliases with handy executables and preferred implementations. Source these files to enable them.

### Completions

Useful or faster bash-driven completions for several software. Some are new, some are faster than my system's default.  Source these files to enable them.

### Config files

A set of sourceable dotfiles, or configuration files, for my favourite software. Supported by aliases that replace the original commands and add a flag to pass custom config files.

- Bash: holds a custom `.bashrc_extra` file with additional custom `.bashrc` lines. This file is simply sourced when `mlp` launches. Source yourself for the same effect. For now, the systems default `.bashrc` is also run from `mlp`, hence the prefix `_extra`. 
- Tmux: passes a custom `.tmux.conf` as argument to `tmux` 
- Vim: passes a custom `.vimrc` as argument to `tmux`. Holds a dir to store swapfiles and other cache.
- Vscode: carries two files `keybindings.json` and `settings.json`, and also a dir where a disposable `vscode` user directory will be created. Of course, you must invoke `code` from a terminal for this to work. 

Source `mlp.configs.sh` to enable these.

### Lib

A "core" library for bash `mlp`. These utilities are meant for an `mlp` user at the terminal, but also for the scripts, aliases and infrastructure of this repo. Still considering what fits in here and what should be in a `scripts/` dir.

- `mlp.paths.sh`: Path utils such as find a file up or report path of current running script.
- `mlp.source.sh` Source utils such as `source` all files in this dir or `source` with multiple args.
- `mlp.cli.sh`: Cli utils. Work in progress
- `mlp.shopt.sh`: Shell configuration. Work in progress

Source these to enable each.

### Templates

A more isolated tool to copy several template files to `$PWD`. Dump your most common file structures here.

Source `mlp.templates.sh` to enable.

### Themes

Aesthetics and utilitities for your command line prompt. For now, only a default theme which simply adds `(mlp)` to your system prompt is included.

Source `mlp.themes.sh` to enable an util to switch theme, or simply source one by looking it up.

## Diving deeper

- https://github.com/ohmyzsh/ohmyzsh
- https://github.com/ohmybash/oh-my-bash
- https://github.com/Bash-it/bash-it
