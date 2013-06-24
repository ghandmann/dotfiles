set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'


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