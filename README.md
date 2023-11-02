# Victor's vimrc
You are free to use and modify this vimrc for their use personal.

# Requeriments
* [Git](https://git-scm.com)
* [Node.js](https://nodejs.org)

## Submodules setup
**1.** `git submodule init`: It will initialize submodules after clone

**2.** `git submodule update`: It will clone submodules

**3.** `git submodule update --remote` **(Optional)**: It will update submodules to latest commits

> Notes

If an error appears saying: `[coc.nvim] build/index.js not found, please compile coc.nvim by: npm run build`, follow the steps.

**1.** Go to [coc.nvim](/pack/lsp/start/coc.nvim) folder.

```bash
$ cd pack/lsp/start/coc.nvim
```

**2.** Change the git branch that coc.nvim is using to `release`.

```bash
$ git checkout release
```
