execute pathogen#infect()

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" jj to Esc
:imap jj <Esc>
" hh to unhighlight matches
:nnoremap hh :noh<CR>
" Double tap CTRL+L to toggle line numbers
:nmap <C-L><C-L> :set invnumber<CR>

syntax enable           " enable syntax processing
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line

set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set showmatch           " highlight matching [{()}]

colorscheme DevC++

" CtrlP options
let g:ctrlp_map = '<c-p>' "CtrlP Mapping
let g:ctrlp_cmd = 'CtrlP'
:nmap <C-T> <C-P>
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1

" Move to the previous buffer with "gp"
nnoremap gp :bp<CR>
" Move to the next buffer with "gn"
nnoremap gn :bn<CR>
" Close the current buffer with "gd"
nnoremap gd :bd<CR>
" List all possible buffers with "gl"
nnoremap gl :ls<CR>
" List all possible buffers with "gb" and accept a new buffer argument [1]
nnoremap gb :ls<CR>:b

" Airline options
set laststatus=2

" dont save .netrwhist history
let g:netrw_dirhistmax=0
