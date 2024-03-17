" -----------------------------------------------------------
" BASIC SETTINGS:
" -----------------------------------------------------------
set encoding=utf-8
set nowrap
set number                                                                      " add line numbers

syntax enable                                                                   " enable syntax and plugins (for netrw)
filetype plugin on                                                              " reocgnizing the file type
filetype plugin indent on                                                       " allow auto-indenting depending on file type

set autoread                                                                    " automatically loads external file changes

set autoindent                                                                  " indent a new line the same amount as the line just typed
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab                     " tabulator behaviour

set showmatch                                                                   " show matching
set ignorecase                                                                  " case insensitive

set hlsearch                                                                    " highlight search
set incsearch                                                                   " incremental search
set splitright                                                                  " split to the right of the current window
set splitbelow                                                                  " split below the current window
set cursorline                                                                  " current line is highlited
"set cc=130                                                                     " set an 130 column border for good coding style

set noundofile                                                                  " disable creating undo file
set noswapfile                                                                  " disable creating swap file
set nobackup                                                                    " disable backup files
set nowritebackup                                                               " disable write backup files

packloadall

colorscheme slate                                                               " colorscheme slate
set background=dark                                                             " set background=light

" -----------------------------------------------------------
" SOURCING SETTING FILES:
" -----------------------------------------------------------
execute(':source '.g:config_path.'/built-in-filebrowser.vim')
execute(':source '.g:config_path.'/custom-commands.vim')
execute(':source '.g:config_path.'/find-in-files.vim')
execute(':source '.g:config_path.'/findfiles.vim')
execute(':source '.g:config_path.'/folding.vim')
execute(':source '.g:config_path.'/git.vim')
execute(':source '.g:config_path.'/keybindings.vim')
