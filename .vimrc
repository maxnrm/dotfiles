filetype plugin indent on
syntax on

set rtp+=/usr/share/vim/addons/plugin/
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

let g:solarized_termcolors=256
set background=dark
colorscheme solarized
set number
set cursorline
set wildmenu
set showmatch
set incsearch
set hlsearch
set tabstop=4
set softtabstop=4
set expandtab     
