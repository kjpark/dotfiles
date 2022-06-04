# dotfiles

WIP -- roadmapping the structure and function in this file

- 2022 edition!
- goal: organize & automate

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

## programs list (deleteme)
```
bat
exa
starship
zoxide
zsh-syntax-highlighting

docker
kubectl

figlet
lolcat
```
