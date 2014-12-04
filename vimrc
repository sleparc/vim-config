" ----------
" Vim Config
" ----------
"
" This file is based on :
"   - Joe Ferris's vimrc => http://github.com/jferris/config_files/blob/master/vimrc
"   - Pivotal Labs' vimrc => https://github.com/pivotal/vim-config/blob/master/vimrc
"

set nocompatible                " Don't maintain compatibility with vi
syntax on                       " Highlight known syntaxes
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on

" Source initialization files
" ---------------------------
runtime! init/**.vim

" Machine-local vim settings
" --------------------------
if filereadable(".vimrc.local")
  source .vimrc.local
endif

