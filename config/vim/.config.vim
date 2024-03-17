" Execute the polimorphic part of the configuration
set laststatus=2                                                                " last window and ONLY the last window will always have a status line

execute(':source '.g:config_path.'/vim/terminal'.'.vim')

" Execute the common part of the configuration
execute(':source '.g:config_path.'/.config.vim')
