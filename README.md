# Victor's vimrc

My Vim dotfiles are suposed to be fully compatible with Windows, Unix and Linux machines.
You are free to use and modify this vimrc for their personal use at your own risk.

## Requeriments
* [Vim](https://github.com/vim/vim) >= 8.0
* [Git](https://git-scm.com)
* [Node.js](https://nodejs.org) - For language servers installation.
* [Fzf](https://github.com/junegunn/fzf)

## Submodules

### How to setup

#### Linux / MacOS

```shell
$ make
```

or

```shell
$ make install
```

#### Windows

```shell
$ ./scripts/actions.ps1
```

### How to update

#### Linux / MacOS

```shell
$ make update
```

#### Windows

```shell
$ ./scripts/actions.ps1
```

### How to uninstall

#### Linux / MacOS

```shell
$ make uninstall
```

#### Windows

```shell
$ ./scripts/actions.ps1
```

### How to remove a specific submodule

Inside [scripts](/scripts) folder you'll found files scripts for Linux / MacOS machines (Bash Script file) and Windows (Powershell file).
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

#### Windows

```shell
$ ./scripts/win_remove_pack_submodule.ps1
```

Follow the instructions that both scripts tells you to have a successful
experience.
