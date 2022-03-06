" basically all of this comes from https://github.com/jessfraz/.vim
" credit to the queen
execute pathogen#infect()

set nocompatible              " be iMproved, required
set nofoldenable              " disable folding
filetype off                  " required

filetype plugin indent on
syntax on

syntax enable           " enable syntax processing
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set nopaste             "
set noerrorbells        " No beeps

set lazyredraw          " redraw only when we need to.
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set shiftwidth=4        " 4 space autoindenting while coding usually
set expandtab           " tabs are spaces
set showmatch           " highlight matching [{()}]

" colors
"colorscheme desert
"set background=dark
"colorscheme desert256v2

" tmp files
set directory=~/.vim/tmp

" dont save .netrwhist history
let g:netrw_dirhistmax=0

" Makefile settings
autocmd FileType make setlocal noexpandtab

" ----
" Plugin Settings
" ----

" CtrlP options
let g:ctrlp_map = '<c-p>' "CtrlP Mapping
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|venv)$'
set wildmenu            " visual autocomplete for command menu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
if !executable('rg')
  echo "You might want to install ripgrep: https://github.com/BurntSushi/ripgrep#installation"
endif
if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
endif

" vim-go things
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" ansible-vim
let g:ansible_unindent_after_newline = 0

" rust.vim
let g:rustfmt_autosave = 1

" gitgutter
highlight clear SignColumn    " make gutter same color as background
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" vim-better-whitespace
" do not highlight the whitespace
let g:better_whitespace_enabled=0
" auto strip whitespace except for file with extention blacklisted
let blacklist = ['diff', 'gitcommit', 'unite', 'qf', 'help', 'markdown']
autocmd BufWritePre * if index(blacklist, &ft) < 0 | StripWhitespace

" multiple cursors
" https://github.com/mg979/vim-visual-multi/wiki/Quick-start
" Ctrl-Down to do selections or Ctrl-N to do sublime-style

" splits
" TODO learn more
" easier nav ctrl+hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" vim-which-key
let g:mapleader = ","
nnoremap <silent> <leader> :<c-u>WhichKey ','<CR>
call which_key#register(',', "g:which_key_map")
" Define prefix dictionary
let g:which_key_map = {}
nnoremap <leader>? :WhichKey ','<CR>
let g:which_key_map['?'] = 'show help'

" move to beginning/end of line
nnoremap B ^
nnoremap E $
vnoremap B ^
vnoremap E $

" jj to Esc
:imap jj <Esc>
" hh to unhighlight matches
:nnoremap hh :noh<CR>
" Double tap CTRL+L to toggle line numbers
:nmap <C-L><C-L> :set invnumber<CR>

" disable the recording macro, drives me nuts.
map q <Nop>

" buffer stuff
let g:which_key_map.g = { 'name' : '+buffer' }
" Move to the previous buffer with "gp"
nnoremap gp :bp<CR>
nnoremap <silent> <leader>gp :bp<CR>
let g:which_key_map.g.p = 'previous buffer (no leader needed)'

" Move to the next buffer with "gn"
nnoremap gn :bn<CR>
nnoremap <silent> <leader>gn :bn<CR>
let g:which_key_map.g.n = 'next buffer (no leader needed)'

" Close the current buffer with "gd"
nnoremap gd :bd<CR>
nnoremap <silent> <leader>gd :bd<CR>
let g:which_key_map.g.d = 'close buffer (no leader needed)'

" ,b to browse ctrl+p buffer list
nnoremap <leader>b :CtrlPBuffer<CR>
let g:which_key_map.b = 'ctrl+p buffer list'

set hidden     " change buffers without writing to a file
set confirm    " let me close a buffer without saving changes
" buffer

" remove trailing whitespace
nnoremap <leader>ww :%s/\s\+$//e<CR>
let g:which_key_map.ww = 'remove trailing whitespace'

" source vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>
let g:which_key_map.s = { 'v' : 'source vimrc' }

" Fast saving
nnoremap <leader>w :w!<cr>
let g:which_key_map.w = 'save'

" Give some no-op (can't press these and do anything) help for ctrl+p bindings
let g:which_key_map.c = {
       \ 'name' : '+ctrlp' ,
       \ 'f5'           : ['echo hi', 'Refresh Files'],
       \ '<c-f>, <c-b>' : ['echo hi', 'Cycle between modes'],
       \ '<c-j>, <c-k>' : ['echo hi', 'Navigate result list'],
       \ '<c-v>, <c-x>' : ['echo hi', 'Open result in new split'],
       \ '<c-y>'        : ['echo hi', 'Create new file'],
       \ }

" vim-ripgrep
let g:which_key_map.Rg = 'use :Rg <stuff> to ripgrep!'
