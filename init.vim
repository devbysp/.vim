" -----------------------------------------------------------
" PLUGINS:
" -----------------------------------------------------------
let g:home_path=expand('~/.config')                                             " path to home directory
let g:vimrc_path=expand('~/.config/nvim/init.vim')                              " path to .vimrc file
let g:vim_path=g:home_path.'/nvim'                                              " path to .vim directory
let g:bundle_path=g:vim_path.'/bundle'                                          " path to plugin install directory
let g:config_path=g:vim_path.'/config'                                          " path to vim general configuration
let g:plug_config_path=g:vim_path.'/plug-config'                                " path to vim plugin configuration directory
let g:code_snippets_path=g:vim_path.'/code-snippets'                            " ptha to predefined code snippets

" -----------------------------------------------------------
" BACKUP CONFIGURATION:
" -----------------------------------------------------------
set dir=/tmp,/c/tmp,/c/temp
set backupdir=/tmp,/c/tmp,/c/temp
set udf
set udir=/tmp,/c/tmp,/c/temp

" -----------------------------------------------------------
" SETTINGS:
" -----------------------------------------------------------
execute(':source '.g:config_path.'/nvim/.config.vim')
execute(':source '.g:plug_config_path.'/.plugins.vim')
