" Don't use Ex mode, use Q for formatting
map Q gq




" Edit routes
command! Rroutes :e config/routes.rb
command! Rschema :e db/schema.rb


" Local config
if filereadable(".vimrc.local")
  source .vimrc.local
endif

" Use Ack instead of Grep when available
if executable("ack")
  set grepprg=ack\ -H\ --nogroup\ --nocolor\ --ignore-dir=tmp\ --ignore-dir=coverage
endif


" Snippets are activated by Shift+Tab
let g:snippetsEmu_key = "<S-Tab>"


" Tags
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"
set tags=./tags;



" This will allow you to sudo from within vim to save a file that you dont
" have write permissions on
command! W w !sudo tee % > /dev/null



" Will trim all whitespace off the end of each line
command! Respace %s/\(\s\+\)\(\n\)/\2/

" CTRL-H will convert an erb file to Haml
function! Html2Haml()
  let fileext = expand("%:e")
  if fileext == "erb"
    let filename = expand("%:r")
    let current_file = filename . "." . fileext
    let tmp_file = tempname()
    let new_file = filename . ".haml"
    execute "!html2haml " . current_file . " " . tmp_file
    exec "silent split " . tmp_file
    exec "silent normal GVggy"
    exec "silent bunload"
    exec "silent normal GVggp"
    exec "silent Gmove " . new_file
    exec "silent edit!"
  endif
endfunction

set autoread

