This repo is for managing configuration files and keeping them all centralized and making my configurations more portable between machines.

### Setup
Install `stow` with `sudo apt install stow`

See [here](https://www.jakewiesler.com/blog/managing-dotfiles#understanding-stow) for a detailed explanation of `stow` directory structure 

Key takeaways:
- The `target directory` is the path AFTER the `package` name relative to `$HOME`
  - ex: in the below example for `nvim`, the target directory is `$HOME/.config/nvim/...`
- The stow `package` is the name of each directory inside of the project
  - ex: in the below example `nvim`, `zsh`, and `tmux` and these are used to run `stow` like `stow nvim` to link the `nvim/` directory

Example structure of this repo
```
.dotfiles/
  | 
  ├- nvim/
  | └ .config/
  |   └ nvim/
  |     ├ init.lua
  |     ├ lua
  |       └ other files
  ├- zsh/
    └ .zshrc
  ├- tmux/
  | └ .config
  |   └ tmux
  |     ├ tmux.conf
```
