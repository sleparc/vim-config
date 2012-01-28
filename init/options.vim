" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup
set nowritebackup
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

set guifont=Bitstream\ Vera\ Sans\ Mono:h14
set list listchars=eol:¬,tab:»·,trail:·

" Switch wrap off for everything
set nowrap

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Always display the status line
set laststatus=2

" Numbers
set number
set numberwidth=5

" Tab completion options
" (only complete to the longest unambiguous match, and show a menu)
set completeopt=longest,menu
set wildmode=list:longest,list:full
set complete=.,t

" case only matters with mixed case expressions
set ignorecase
set smartcase

" Set a custom status line to include the current Git branch
set statusline=%<\ %n:%f\ %y\ %{fugitive#statusline()}\ %m%r%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

" GLobally ignore files and directories
set wildignore+=**/log/**,*.orig,*.swp

set foldmethod=syntax

set hlsearch "switch on highlighting the last used search pattern

