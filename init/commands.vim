"--------------
" Commands
"--------------


" Edit routes
command! Rroutes :e config/routes.rb
command! Rschema :e db/schema.rb

" This will allow you to sudo from within vim to save a file that you dont
" have write permissions on
command! W w !sudo tee % > /dev/null

" Will trim all whitespace off the end of each line
command! Respace %s/\(\s\+\)\(\n\)/\2/

command! FilenameInBuffer :let @* = expand("%")
