"--------------
" Options
"--------------

set guifont=Bitstream\ Vera\ Sans\ Mono:h14

set list listchars=eol:¬,tab:»·,trail:· " unwanted characters are visible
set backspace=indent,eol,start          " allow backspacing over everything in insert mode

set autoread                    " No prompt for file changes outside Vim
set noswapfile                  " No swap file
set nobackup                    " No backup file
set nowritebackup

set incsearch                   " Incremental search
set history=50                  " History size
set ruler                       " Show the cursor position
set showcmd                     " Display incomplete commands


set nowrap                      " No wrapping
set tabstop=2                   " Tab settings: Softtabs, 2 spaces
set shiftwidth=2                " Width of autoindent
set expandtab                   " Use soft tabs
set ignorecase                  " Ignore case
set smartcase                   " ... unless uppercase characters are involved

set list                        " Show whitespace
set listchars=tab:▸\ ,trail:¬   " UTF-8 characters for trailing whitespace
set virtualedit=onemore         " Cursor can display one character past line
set showmatch                   " Show matching brackets
set hidden                      " Allow hidden, unsaved buffers
set scrolloff=3                 " Scroll when the cursor is 3 lines from edge
set cursorline                  " Highlight current line
set number
set numberwidth=5
set laststatus=2                " Always show statusline
set statusline=%<\ %n:%f\ %y\ %{fugitive#statusline()}\ %m%r%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%) " Set a custom status line to include the current Git branch
set completeopt=longest,menu
set wildmode=list:longest,list:full " Tab completion options (only complete to the longest unambiguous match, and show a menu)
set complete=.,t

highlight clear SignColumn

set ignorecase                  " case only matters with mixed case expressions
set smartcase

set wildignore+=**/log/**,*.orig,*.swp " GLobally ignore files and directories

syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
set foldmethod=syntax           " Folds methods, contexts and classes by default
let javaScript_fold=1           " JavaScript
let perl_fold=1                 " Perl
let php_folding=1               " PHP
let r_syntax_folding=1          " R
let ruby_fold=1                 " Ruby
let sh_fold_enabled=1           " sh
let vimsyn_folding='af'         " Vim script
let xml_syntax_folding=1        " XML

set hlsearch                    " Switch on highlighting the last used search pattern

set visualbell                  " Suppress audio/visual error bell
set notimeout                   " No command timeout

" set clipboard=unnamed           " use system clipboard for yanks
