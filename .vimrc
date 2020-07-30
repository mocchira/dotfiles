set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My Bundles here:
"
" original repos on github
" Display Related
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/vim-emoji'

"# Cursor Related
Plugin 'Lokaltog/vim-easymotion'

"# Search Related
Plugin 'othree/eregex.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

"# Nerdtree Related
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
" Plugin 'ryanoasis/nerd-fonts'

"# Programming Related
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'dense-analysis/ale'
Plugin 'sheerun/vim-polyglot'
Plugin 'majutsushi/tagbar'
Plugin 'junegunn/vim-easy-align'

"# Git Related
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

"# Go Related
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set encoding=UTF-8
let &t_Co=256
highlight SignColumn guibg=black ctermbg=black

""" devicons related
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

""" airline related
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_theme = 'cobalt2'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '|'
let g:airline_symbols.crypt = 'Crypted'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

"""easymotion related
let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
let g:EasyMotion_leader_key="_"
let g:EasyMotion_grouping=1
hi EasyMotionTarget ctermbg=none ctermfg=red
hi EasyMotionShade  ctermbg=none ctermfg=blue

" Cursor
set cursorline
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

set number
set ruler
set cmdheight=2
set laststatus=2
"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set title
set linespace=0
set wildmenu
set showcmd
"----------------
syntax on
"highlight LineNr ctermfg=darkgrey

set smartcase
set wrapscan
set hlsearch
set autoindent smartindent
set showmatch
set backspace=indent,eol,start
set clipboard=unnamed

set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set wrap

nnoremap <C-k> ^d$
nnoremap <C-a> <home>
nnoremap <C-e> <End>
nnoremap ,s :FufFile<CR>
nmap ,p :set paste!<CR>

inoremap <C-e> <Esc>

nmap j gj
nmap k gk

map <C-d> <Del>
map <C-o> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

map ,l <Leader>bv
let mapleader = ","

"""golang related
au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gc <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gs <Plug>(go-implements)
au FileType go nmap <Leader>ge <Plug>(go-rename)

"""autocmd FileType erlang set tags+=/home/yk/dev/erlang/ctags.otp
"""autocmd FileType go set tags+=/home/yk/dev/golang/ctags.go
"""autocmd FileType rust set tags+=/home/yk/dev/rust/ctags.rust

"""autocmd vimenter * if !argc() | NERDTree | endif
