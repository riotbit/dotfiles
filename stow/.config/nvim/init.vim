
" Leader
let mapleader = " "

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup      " no backup before overwriting a file
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=100
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set nohlsearch    " turn off search highlighting

" turns on "detection", "plugin" and "indent" at once
filetype plugin indent on

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Set syntax highlighting for specific file types
autocmd BufRead,BufNewFile *.md set filetype=markdown

" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
let g:is_posix = 1

" Softtabs, 2 spaces
set smarttab
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Make it obvious where 80 characters is
set textwidth=80

" Line Numbers
" set number
" set numberwidth=5

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

let dotdir = $HOME. "/.config/nvim/"

" load bundles
if filereadable(expand(dotdir . 'vimrc.bundles'))
  exec 'source ' . dotdir . 'vimrc.bundles' 
endif

" Local config
if filereadable(expand(dotdir . 'vimrc.local'))
  exec 'source ' . dotdir . 'vimrc.local' 
endif

" Python config
if filereadable(expand(dotdir . 'vimrc.python'))
  exec 'source ' . dotdir . 'vimrc.python' 
endif
