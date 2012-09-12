" -----------
" Keybindings
" -----------

let mapleader = "\\"

nmap <leader>t  :CommandT<CR>
map <leader>t  :CommandT<CR>
" unmap <Leader>te

" Leader shortcuts for Rails commands
map <Leader>m  :Rmodel <CR>
map <Leader>c  :Rcontroller <CR>
map <Leader>v  :Rview <CR>
map <Leader>u  :Runittest <CR>
map <Leader>f  :Rfunctionaltest <CR>

" map <Leader>tm :RTmodel <CR>
" map <Leader>tc :RTcontroller <CR>
" map <Leader>tv :RTview <CR>
" map <Leader>tu :RTunittest <CR>
" map <Leader>tf :RTfunctionaltest <CR>

map <Leader>sm :RSmodel <CR>
map <Leader>sc :RScontroller <CR>
map <Leader>sv :RSview <CR>
map <Leader>su :RSunittest <CR>
map <Leader>sf :RSfunctionaltest <CR>

" Hide search highlighting
map <Leader>h :set invhls <CR>

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

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

" Reload your vimrc with F2
map <F2> :source $MYVIMRC<CR>:echoe "Vimrc Reloaded!!!"<CR>

" CTRL-X will split the window then put your cursor in the buffer you split
" from
map <C-X> :sp<CR><C-W><C-W><CR>

" CTRL-F will run Ggrep for global search
map <C-F> :Ack<Space>

" With the tComment plugin, CMD-/ will comment in visual mode
vmap <D-/> gc
nmap <D-/> Vgc<ESC>

" in edit mode in that buffer
imap <C-Return> <Esc>o

" CTRL-O will create a new line below your cursor and not be in insert mode
" map <C-O> o<Esc>

" CTRL-A will create a new line above your cursor and not be in insert mode
" map <C-A> O<Esc>


map <silent> <C-H> :call Html2Haml()<CR>

" CTRL-Q wiill un-highlight the search results
map <silent> <C-Q> :noh<CR>


nnoremap <Leader>c :set cursorline!<CR>

" Auto-indent whole file
nmap <leader>=  gg=G``
map <silent> <F7> gg=G`` :delmarks z<CR>:echo "Reformatted."<CR>

map , :NERDTreeToggle<CR>

" FuzzyFinder and switchback commands
map <leader>e   :e#<CR>
map <leader>b   :FufBuffer<CR>
map <leader>f   <Plug>PeepOpen
map <leader><C-N> :FufFile **/<CR>

" AckGrep current word
map <leader>a :call AckGrep()<CR>
" AckVisual current selection
vmap <leader>a :call AckVisual()<CR>

