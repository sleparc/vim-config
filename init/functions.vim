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
