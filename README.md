# Victor's vimrc

My Vim dotfiles are suposed to be fully compatible with Windows, Unix and Linux machines.
You are free to use and modify this vimrc for their personal use.

## Requeriments
* [Git](https://git-scm.com)
* [Node.js](https://nodejs.org) - For language servers installation.
* [Fzf](https://github.com/junegunn/fzf)

## Submodules

### How to setup

```shell
$ make
```

or

```shell
$ make install
```

### How to update

```shell
$ make update
```

### How to uninstall

```shell
$ make uninstall
```

### How to remove a specific submodule

Inside [scripts](/scripts) folder you'll found files scripts for Linux / MacOS machines (Bash Script file) and Windows (Working on Powershell file).
To execute them, follow the instructions below.

#### Linux / MacOS

Make sure that the Bash Script file has permissions to be executed.

```shell
$ chmod +x ./scripts/remove_pack_submodule.sh
```

Then execute it typing in shell:

```shell
$ ./scripts/remove_pack_submodule.sh
```

Follow the instructions that the script tells you.

#### Windows

Working on Powershell script...
