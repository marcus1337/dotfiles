set nocompatible
filetype plugin on
syntax on

set number
set mouse=a
set clipboard=unnamedplus
colorscheme habamax
set background=dark
set scrolloff=5        " Keep 5 lines above/below cursor when scrolling
set sidescrolloff=5    " Same, but horizontally
set nowrap             " Don’t wrap long lines
set linebreak          " But break at word boundaries if wrapping
set showcmd            " Show command in bottom right as you type
set ruler              " Show cursor position in status line
set wildmenu           " Enhanced tab-complete in command mode
set lazyredraw         " Speeds up macros and large changes
set ttyfast            " Optimizes for fast terminals
set autoread           " Auto-reload file if changed outside Vim
set hidden             " Allow switching buffers without saving
set backup             " Enable backup files
set undofile           " Persistent undo (needs `set undodir=...`)
set hlsearch

" plugin settings
let g:vimwiki_list = [{
      \ 'path': '~/vimwiki/',
      \ 'syntax': 'markdown',
      \ 'ext': 'md'
      \ }]
let g:vimwiki_global_ext = 0

