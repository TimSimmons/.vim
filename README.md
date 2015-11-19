# .vim

My vim dot files. the `.vimrc` file is saved to [.vimrc](https://github.com/Squab/.vim/blob/master/.vimrc).

To get set up run:

```console
$ cd ~/
$ git clone --recursive https://github.com/Squab/.vim.git .vim
$ ln -sf $HOME/.vim/.vimrc $HOME/.vimrc
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
