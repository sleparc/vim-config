"--------------
" Functions
"--------------


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

" Find current word in command mode
function! AckGrep()
  let command = "ack ".expand("<cword>")
  cexpr system(command)
  cw
endfunction

function! AckVisual()
  normal gv"xy
  let command = "ack ".@x
  cexpr system(command)
  cw
endfunction

silent! nmap <unique> <silent> <Leader>l :exec "noh"<CR>
silent! nmap <unique> <silent> <Leader>f :e .<CR>
silent! vmap <unique> <silent> <Leader>f :call Acklocalsearch()<CR>
silent! vmap <unique> <silent> <Leader>F :call Acksearch()<CR>

function! Acklocalsearch()
 normal gv"xy
 let @x = @x
 let cwf = @%
 execute ":Ack " . @x . " " . cwf
endfunction

function! Acksearch()
 normal gv"xy
 let @x = @x
 execute ":Ack " . @x
endfunction
