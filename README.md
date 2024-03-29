# dotfiles

WIP -- roadmapping the structure and function in this file

- 2022 edition!
- goal: organize & automate

![ok preview](https://user-images.githubusercontent.com/6612147/172035027-1aa88901-d7f7-412e-964c-03c1abe950e0.png)

## structure

- todo
  - include readme for req'd subdirs

currently desired structure:
```
dotfiles/
├─ alias/           # aliases broken into files
│  ├─ shell.sh
│  ├─ kubectl.sh
│  ├─ ...
├─ config/          # program-specific config
│  ├─ configuration.nix
│  ├─ init.vim
│  ├─ ...
├─ install/         # install scripts
│  ├─ (todo)
│  ├─ ...
├─ packages/        # stuff i like to install
|  ├─ home.nix
|  ├─ rust.nix
|  ├─ brew.txt
|  ├─ ...
├─ templates/       # partials to extend/bootstrap other files
|  ├─ .bashrc
|  ├─ .zshrc
|  ├─ ...
├─ README.md        # plz read me <3
```

## installation

- todo
  - idempotent installation scripts
    - append/update existing `.*rc` files
    - symlink config files to locations
  - install package mgrs, pkgs
    - collect brew pkgs?

### aliases

```shell
# ~/.bashrc, ~/.zshrc, ...
source ~/dotfiles/alias/*
```

### brew

[ref (may be outdated)](https://github.com/homebrew/legacy-homebrew/issues/45003)

```shell
brew list > file
cat file | xargs brew install
```
