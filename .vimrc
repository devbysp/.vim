" -----------------------------------------------------------
" PLUGINS:
" -----------------------------------------------------------
let g:home_path=expand('~')                                                     " path to home directory
let g:vimrc_path=expand('~/.vimrc')                                             " path to .vimrc file
let g:vim_path=g:home_path.'/.vim'                                              " path to .vim directory
let g:bundle_path=g:vim_path.'/bundle'                                          " path to plugin install directory
let g:config_path=g:vim_path.'/config'                                          " path to vim general configuration
let g:plug_config_path=g:vim_path.'/plug-config'                                " path to vim plugin configuration directory
let g:code_snippets_path=g:vim_path.'/code-snippets'                            " path to predefined code snippets

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
execute(':source '.g:config_path.'/vim/.config.vim')
execute(':source '.g:plug_config_path.'/.plugins.vim')
