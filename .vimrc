"=== Readme ===
"1. Built-in Options could be covered by Plugin-made Variables
"2. Symbol "+ means the Setting could be used as Vanilla Vim

"let mapleader="-"


" Vim Plug {{{
call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/authorNm/PlugNm
" Plug 'authorNm/plugNm'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug '~/.vim/plugged/gnu-global'

" airline Settings
"let g:solarized_termtrans=1
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
"let g:solarized_termcolors=256
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='solarized'

" On-demand loading
" Plug 'authorNm/plugNm', { 'on':  'PlugCmd' } "On-demand loading: Commands
" Plug 'authorNm/plugNm', { 'for': 'PlugCmde' } "On-demand loading: File types

" Initialize plugin system
call plug#end() 
" }}}

" Imitate WinManager {{{
noremap <F12> :NERDTreeToggle<CR>:TagbarToggle<CR><C-W>=
"+noremap <Leader>ee :NERDTreeToggle<CR>:TagbarToggle<CR><C-W>=
" }}}

" NERDtree {{{
noremap <F8> :NERDTreeToggle<CR>
"+noremap <Leader>nt :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=1 "show hidden file
let NERDTreeWinSize=25 
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
let NERDTreeShowBookmarks=1
" }}}

" Tagbar {{{
noremap <F9> :TagbarToggle<CR>
"+noremap <Leader>tb :TagbarToggle<CR>
" }}}

" Powerline {{{
set laststatus=2 "always show status line
set linespace=2 "display the underscore when using gvim
let g:airline_powerline_fonts = 1 "enable powerline-fonts
set t_Co=256  "讓配色盤細緻些 (256-xterm), Vimrc 本身的配色在Outfit處
set rtp+=/usr/lib/python3.4/site-packages/powerline/bindings/vim "for running Powerline
let g:Powerline_symbols= "fancy"
set fillchars+=stl:\ ,stlnc:\
" }}}

" General Options {{{
"Ref:https://github.com/wangshijun/mydotfiles/blob/master/.vimrc
set nocompatible
scriptencoding utf-8
set encoding=utf-8 nobomb


" Outfit {
filetype plugin indent on "diff *.filetype, diff keyword (must be at begin of Outfit)
syntax on | syntax enable "syntax on first, then enable


set nu "line number
set rnu "relative number
"+set ruler "cursor location on status line
set hlsearch
"set mouse=a "press mouse to select a word

set ignorecase
set incsearch "incremental search
set showcmd "inserted cmd shown at bottom right hand corner

set wildmenu "wildmenu on
set wildmode=list:longest,full
set wildignore+=*.swp,*.bak
set wildignore+=*.pyc,*.class,*.sln,*.Master,*.csproj,*.csproj.user,*.cache,*.dll,*.pdb,*.min.*
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=tags
set wildignore+=*.tar.*
set wildignorecase

set background=dark
"let g:lucius_contrast_bg="high" "make bg blacker
colorscheme lucius "must be in front of CursorLine


set cursorline "cursorline
"=== Color Setting for Individual Identifiers ===
hi CursorLine ctermfg=NONE ctermbg=238 cterm=NONE  "cterm is underline
"hi Comment ctermfg =242 "grey42
"}

" Basic Operation {{

" }}
" View {{
" for Buffer {
nnoremap gb :ls<CR>:b<Space> "switch
"}

" for Window {
" }
" for Tab {
set showtabline=2  "always display tab, others rely on Powerline
"+hi TabLineFill ctermfg=LightGreen ctermbg=235 "useless due to Powerline
"+hi TabLine ctermfg=245 ctermbg=236 "useless due to Powerline
"+hi TabLineSel ctermfg=254 ctermbg=24 "useless due to Powerline
"}
"}}

" Formatting {
set wrap " wrap long lines
set autoindent "indent at the same level of the previous line
set shiftwidth=4 "use indents of 4 spaces
set expandtab "tabs become spaces, not tabs
set tabstop=4 "an indentation every four columns
set softtabstop=4 "let backspace delete indent
"set matchpairs+=<:> "match, to be used with %
set foldmethod=indent
"set foldmethod=syntax
"set foldmethod=marker
set foldnestmax=3
"}

" Auto-Completion {
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" }

" Backup Director {
set backup " backups are nice ...

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

if has('persistent_undo')
	set undofile "so is persistent undo ...
"set undolevels=1000
"maximum number of changes that can be undone
"set undoreload=10000
"maximum number lines to save for undo on a buffer reload
endif
"}

" Ctags {
set tags=tags;
" }
" GNU-Global {
"=== For gtags-cscope ===
set cscopetag "(previously than prg) include the cscope db when using ctrl-] and ctrl-t
set cscopeprg=gtags-cscope "make cs_prg becomes gtags-cscope instead of original cs
set csto=0 "search tag order - 0=cscope then ctags, 1=reversely
set cscopeverbose "give a success/failure message when trying to add a cscope db

if filereadable("GTAGS") "add gtags-cscope db automatically
cs add GTAGS
endif
"}
" }}}
" Personal Mapping {{{

" }}}
