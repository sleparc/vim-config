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

" No Help, please
nmap <F1> <Esc>

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

map <silent> <C-H> :call Html2Haml()<CR>

nnoremap <Leader>c :set cursorline!<CR>

" Auto-indent whole file
nmap <leader>=  gg=G``
map <silent> <F7> gg=G`` :delmarks z<CR>:echo "Reformatted."<CR>

" NERDTree
map , :NERDTreeToggle<CR>

" AckGrep current word
map <leader>a :call AckGrep()<CR>
" AckVisual current selection
vmap <leader>a :call AckVisual()<CR>


map <leader>cf :let @* = expand("%")<CR>
