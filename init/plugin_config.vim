"---------------
" Plugin Config
"---------------

" -------------------------------------------------------------------
" NERDTree
" -------------------------------------------------------------------
let NERDTreeShowHidden=1
" -------------------------------------------------------------------


" -------------------------------------------------------------------
" nathanaelkane-vim-indent-guides
" -------------------------------------------------------------------
let g:indent_guides_auto_colors = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
" -------------------------------------------------------------------


" -------------------------------------------------------------------
" sjl-gundo
" -------------------------------------------------------------------
" open on the right so as not to compete with the nerdtree
let g:gundo_right = 1 
" a little wider for wider screens
let g:gundo_width = 60
" -------------------------------------------------------------------


" -------------------------------------------------------------------
" shougo-neocomplcache
" -------------------------------------------------------------------
let g:neocomplcache_enable_at_startup = 0
" -------------------------------------------------------------------


" -------------------------------------------------------------------
" NeoCompCache
" -------------------------------------------------------------------
" default # of completions is 100, that's crazy
let g:neocomplcache_max_list = 5

" words less than 3 letters long aren't worth completing
let g:neocomplcache_auto_completion_start_length = 4

" Map standard Ctrl-N completion to Cmd-Space
inoremap <D-Space> <C-n>

" This makes sure we use neocomplcache completefunc instead of 
" the one in rails.vim, otherwise this plugin will crap out
let g:neocomplcache_force_overwrite_completefunc = 1

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

let g:neocomplcache_enable_at_startup = 1
" -------------------------------------------------------------------


" -------------------------------------------------------------------
" CtrlP
" -------------------------------------------------------------------
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'vendor/\(gems\|cache\|bin\|bundler\|doc\|specifications\)'
map <Leader>b :CtrlPBuffer<CR>
" -------------------------------------------------------------------
"
"
" -------------------------------------------------------------------
" Syntastic
" -------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_enable_signs=1
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html', 'java'] }
" -------------------------------------------------------------------
