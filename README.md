# .vim

My vim dot files. the `.vimrc` file is saved to [.vimrc](https://github.com/Squab/.vim/blob/master/.vimrc).

To get set up run:

```console
$ cd ~/
$ git clone --recursive https://github.com/TimSimmons/.vim.git .vim
$ ln -sf $HOME/.vim/vimrc $HOME/vimrc
$ ln -sf $HOME/.vim/vimrc $HOME/.vim/init.vim
$ mkdir -p .vim/tmp
```

## Git Submodules

To add a submodule:
`git submodule add https://github.com/bling/vim-airline.git bundle/vim-airline`

Updating submodules:
`git submodule foreach git pull origin master`

## Fugitive Things

- `Ctrl+W x 2` to change buffers in a `:Gdiff`
- [Great link for working with Fugitive](http://vimcasts.org/episodes/fugitive-vim-working-with-the-git-index/)
- In `:Gdiff`: `:diffput` to add changes from the working copy. Then `:w` in the index.
![Gdiff things](http://vimcasts.org/images/blog/diffget-diffput-matrix.png)

## Neovim

Neovim can be installed with `install-neovim.sh`, it'll be built because I couldn't find a package for Debian. It'll
set up the appropriate symlinks as well. To get true colors, the alias for vim should look like: `alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'`
