" -----------------------------------------------------------
" FINDING IN FILES:
" -----------------------------------------------------------
"
" Find regular expression in all files matching a file naming pattern
function! GrepFunction(file_pattern, text_pattern)
  " :silent grap 'regex pattern' src/**/*.ts*
  silent execute 'grep '.a:text_pattern.' '.a:file_pattern
endfunction
"
command! -nargs=+ FindInFiles   call GrepFunction(<f-args>)
