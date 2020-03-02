filetype plugin indent on
syntax on

set rtp+=/usr/share/vim/addons/plugin/
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2
set encoding=utf-8
"russian shortcuts works in command mode (commands don't)
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

"colorscheme
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

set relativenumber number

"enable relativenumber on focus
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set cursorline
set wildmenu
set showmatch
set incsearch
set hlsearch

"python3 specific config
set tabstop=4
set softtabstop=4
set expandtab

set foldmethod=indent
set foldlevel=99

"remap exiting insert mode
inoremap jk <Esc>
"folding with space
nnoremap <space> za
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
