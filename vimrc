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
set nopaste
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set showmatch           " highlight matching [{()}]
let mapleader=","

" remove trailing whitespace
nnoremap <Leader>ww :%s/\s\+$//e<CR>

" colors
set background=dark
colorscheme tim

" CtrlP options
let g:ctrlp_map = '<c-p>' "CtrlP Mapping
let g:ctrlp_cmd = 'CtrlP'
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
" open a new tab with CTRL T
nnoremap <C-T> :tabnew<CR>
set hidden     " change buffers without writing to a file
set confirm    " let me close a buffer without saving changes

" Airline options
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" dont save .netrwhist history
let g:netrw_dirhistmax=0

" vim-go things
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" multiple cursors
let g:multi_cursor_exit_from_insert_mode = 0
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

autocmd FileType make setlocal noexpandtab
