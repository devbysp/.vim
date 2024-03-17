" -----------------------------------------------------------
" CUSTOM COMMANDS:
" -----------------------------------------------------------

" Vim theme
command! Dark                   set background=dark
command! Light                  set background=light

" Resource files
command! Keybindings            execute(':e '.g:config_path."/keybindings.vim")
command! GitCommands            execute(':e '.g:config_path."/git.vim")
command! Config                 execute(':e '.g:vim_path."/.config.vim")
command! PlugConfig             execute(':e '.g:vim_path."/.plugins.vim")
command! Source                 execute(':source '.g:vimrc_path)

" Change line endings
command! Unix                   set ff=unix                                     " LF only
command! Dos                    set ff=dos                                      " LF CR
command! Windows                set ff=dos                                      " LF CR

command! LF                     set ff=unix                                     " LF only
command! LFCR                   set ff=dos                                      " LF CR
