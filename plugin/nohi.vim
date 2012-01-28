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
