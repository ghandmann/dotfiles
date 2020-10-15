scriptencoding utf-8
set encoding=utf-8

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
call vundle#end()

:filetype plugin on
:filetype indent on
:syntax on
:set nu
:set mouse=a
:set tabstop=3
:set shiftwidth=3
"fixing broken backspace
set backspace=2
set cpo=aABceFs
set ttymouse=xterm2

" smart matching/searching
set smartcase
set ignorecase
" search highlighting
set hlsearch

set autowrite

autocmd BufNewFile,BufRead *.p? compiler perl
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

" Default HTML-Styles for Template-Files
au BufNewFile,BufRead *.html.{tt,tt2,ep} set filetype=html

colorscheme solarized
set background=dark
set t_Co=16

map <C-Right> :cnext<CR>
map <C-Left> :cprevious<CR>

:command XMLprettify .!xmllint --format --silence --recover -

:set list
:set listchars=tab:→\ ,eol:¶
:set modeline

" Perl Folding
set foldmethod=syntax
let perl_fold=1
let perl_nofold_packages=1
nnoremap <Space> za


" WARNING!
" Last statement!
" Try to find a ".vimlocal" file in the current CWD to override these .vimrc settings
silent! so .vimlocal
