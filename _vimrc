" -----------------------------------------------------------
" PLUGINS:
" -----------------------------------------------------------
let g:home_path=expand('~')                                                     " path to home directory
let g:vimrc_path=expand('~/_vimrc')                                             " path to .vimrc file
let g:vim_path=g:home_path.'/.vim'                                              " path to .vim directory
let g:bundle_path=g:vim_path.'/bundle'                                          " path to plugin install directory
let g:config_path=g:vim_path.'/config'                                          " path to vim general configuration
let g:plug_config_path=g:vim_path.'/plug-config'                                " path to vim plugin configuration directory
let g:code_snippets_path=g:vim_path.'/code-snippets'                            " ptha to predefined code snippets

" -----------------------------------------------------------
" BASIC SETTINGS:
" -----------------------------------------------------------
set lines=40 columns=120                                                        " set lines=80 columns=250


set guioptions-=T                                                               " disables the toolbar
set guioptions-=m                                                               " disables the toolbar
set guioptions-=e                                                               " vim like tabs
set guioptions-=r                                                               " right scrollbars off
set guioptions-=R                                                               " right scrollbars off
set guioptions-=l                                                               " left scrollbars off
set guioptions-=L                                                               " left scrollbars off

set nocompatible                                                                " enter the current millenium
set guifont=Consolas:h12

" -----------------------------------------------------------
" BACKUP CONFIGURATION:
" -----------------------------------------------------------
set noswapfile                                                                  " disable creating swap file
set nobackup nowritebackup                                                      " disable backup files

set dir=c:\\tmp,c:\\temp
set backupdir=c:\\tmp,c:\\temp
set udf
set udir=c:\\tmp,c:\\temp

" -----------------------------------------------------------
" SETTINGS:
" -----------------------------------------------------------
execute(':source '.g:vim_path.'/.plugins.vim')
execute(':source '.g:vim_path.'/.config.vim')

" Setting only for windows vim
execute(':source '.g:plug_config_path.'/wvim-enhancements.vim')

set background=light                                                          " set background=dark
