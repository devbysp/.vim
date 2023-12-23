autocmd FileType purs set autoread
autocmd BufWritePost *.purs :silent execute '!purs-tidy format-in-place ' . shellescape(expand('%'))
