call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Basic vim
Plugin 'scrooloose/nerdtree'          " Browse file tree
Plugin 'kien/ctrlp.vim'               " Fuzzyfind a file
Plugin 'corntrace/bufexplorer'        " Lists open buffers
Plugin 'rking/ag.vim'                 " Very fast search
Plugin 'godlygeek/tabular'            " Align text on specified character
Plugin 'shougo/neocomplcache'         " Word completion
Plugin 'tomtom/tcomment_vim'          " Comment a line/paragraph
Plugin 'tpope/vim-fugitive'           " Git commands in vim
Plugin 'tpope/vim-surround'           " Change surrounding characters
Plugin 'bling/vim-airline'            " Tagbar at bottom of window that displays file, status, etc.
Plugin 'vim-scripts/guicolorscheme.vim'


" Advanced vim
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'sjl/gundo.vim'
Plugin 'vim-scripts/IndexedSearch'
Plugin 'vim-scripts/greplace.vim'


" Language specific
Plugin 'tpope/vim-rails'                 " Rails file navigation, etc.
Plugin 'tpope/vim-endwise'


" Snipmate dependencies
Plugin 'garbas/vim-snipmate'             " support for textual snippets
Plugin 'MarcWeber/vim-addon-mw-utils'    " SnipMate depends on vim-addon-mw-utils
Plugin 'honza/vim-snippets'              " snippets for snipMate
Plugin 'mmozuras/snipmate-mocha'


Plugin 'scrooloose/syntastic'            " syntax checking plugin
Plugin 'pangloss/vim-javascript'         " Javascript indentation and syntax support
Plugin 'mxw/vim-jsx'                     " Syntax highlighting and indenting for JSX
Plugin 'isRuslan/vim-es6'                " List of JavaScript ES6 snippets and syntax highlighting for vim
" Plugin 'monokrome/vim-testdrive'

" Dependencies
Plugin 'tomtom/tlib_vim'


" Should probably be deleted
Plugin 'tpope/vim-unimpaired'

call vundle#end()
