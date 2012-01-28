" Don't use Ex mode, use Q for formatting
map Q gq


" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Set File type to 'text' for files ending in .txt
  autocmd BufNewFile,BufRead *.txt setfiletype text

  " Enable soft-wrapping for text files
  autocmd FileType text,markdown,html,xhtml,eruby setlocal wrap linebreak nolist

  " Set filetype to html for EJS files
  au BufNewFile,BufRead *.ejs setfiletype html

  " For Haml
  au! BufRead,BufNewFile *.haml         setfiletype haml

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

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")


" \ is the leader character
let mapleader = "\\"


" Leader shortcuts for Rails commands
" map <Leader>m :Rmodel 
" map <Leader>c :Rcontroller 
" map <Leader>v :Rview 
" map <Leader>u :Runittest 
" map <Leader>f :Rfunctionaltest 
" map <Leader>tm :RTmodel 
" map <Leader>tc :RTcontroller 
" map <Leader>tv :RTview 
" map <Leader>tu :RTunittest 
" map <Leader>tf :RTfunctionaltest 
map <Leader>sm :RSmodel 
map <Leader>sc :RScontroller 
map <Leader>sv :RSview 
map <Leader>su :RSunittest 
map <Leader>sf :RSfunctionaltest 

" Edit routes
command! Rroutes :e config/routes.rb
command! Rschema :e db/schema.rb

" Hide search highlighting
map <Leader>h :set invhls <CR>

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Duplicate a selection
" Visual mode: D
vmap D y'>p

" Press Shift+P while in visual mode to replace the selection without
" overwriting the default register
vmap P p :call setreg('"', getreg('0')) <CR>

" No Help, please
nmap <F1> <Esc>

" Press ^F from insert mode to insert the current file name
imap <C-F> <C-R>=expand("%")<CR>

" Maps autocomplete to tab
" imap <Tab> <C-N>

" Adds a global snippet for ^L to insert a hash rocket
imap <C-L> <Space>=><Space>

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

" Reload your vimrc with F2
map <F2> :source $MYVIMRC<CR>:echoe "Vimrc Reloaded!!!"<CR>


" This will allow you to sudo from within vim to save a file that you dont
" have write permissions on
command! W w !sudo tee % > /dev/null

" CTRL-X will split the window then put your cursor in the buffer you split
" from
map <C-X> :sp<CR><C-W><C-W><CR>

" CTRL-F will run Ggrep for global search
map <C-F> :Ack<Space>

" With the tComment plugin, CMD-/ will comment in visual mode
vmap <D-/> gc
nmap <D-/> Vgc<ESC>

" In insert mode o will create a new line below the cursor and put your cursor


" in edit mode in that buffer
imap <C-Return> <Esc>o

" CTRL-O will create a new line below your cursor and not be in insert mode
map <C-O> o<Esc>

" CTRL-A will create a new line above your cursor and not be in insert mode
map <C-A> O<Esc>

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

map <silent> <C-H> :call Html2Haml()<CR>

" CTRL-Q wiill un-highlight the search results
map <silent> <C-Q> :noh<CR>


nnoremap <Leader>c :set cursorline!<CR>

nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
set autoread

