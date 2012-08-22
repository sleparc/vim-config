"------------
" AutoCommand
"------------


" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  autocmd FileType text,markdown,html,xhtml,eruby  setlocal wrap linebreak nolist " Enable soft-wrapping for text files

  autocmd BufNewFile,BufRead *.txt                 setfiletype text " txt files
  autocmd BufNewFile,BufRead *.{md,mkd,mkdn,mark*} setfiletype markdown " Markdown
  autocmd BufNewFile,BufReadPost *.feature,*.story setfiletype cucumber " Cucumber
  autocmd BufNewFile,BufRead *.ejs                 setfiletype html
  autocmd! BufRead,BufNewFile *.haml               setfiletype haml

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Automatically load .vimrc source when saved
  autocmd BufWritePost .vimrc source $MYVIMRC

  augroup END

  augroup vimrc_autocmds
    autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
    autocmd BufEnter *.rb match OverLength /\%80v.*/
    autocmd BufEnter *.js match OverLength /\%100v.*/
  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

