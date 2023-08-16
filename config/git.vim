" ------------------------------------------------------------------------------
" GIT CONFIGURATIONS:
" ------------------------------------------------------------------------------

" Fugitive git status window
function! GitStatusWindow()
    execute ":vertical Git"
    setlocal winfixwidth
    vertical resize 80
endfun

function! FileHistory(file)
    silent execute ":GV --follow --" expand(a:file)
endfun

function! FileHistoryForCurrentLine(file, line)
    silent execute ":GV -L".line(a:line).",+1:".expand(a:file)
endfun

" Git log
function! GitLogWindow()
    execute ":vertical Git log --decorate --graph --oneline HEAD master origin/master"
    setlocal winfixwidth
    vertical resize 80
endfun

" Git log all
function! GitLogAllWindow()
    execute ":vertical Git log --decorate --graph --oneline --all"
    setlocal winfixwidth
    vertical resize 80
endfun

" -----------------------------------------------------------
" CUSTOM COMMANDS:
" -----------------------------------------------------------

" Changes
command! Diff                   :vert Gdiffsplit

" Log
command! Log                    :call GitLogWindow()
command! LogAll                 :call GitLogAllWindow()
command! -nargs=1 LogBranch     :GV HEAD <args>
command! History                :call FileHistory("%")
command! HistoryForLine         :call FileHistoryForCurrentLine("%", ".")

" Push And Pull
command! -nargs=1 Upstream      :Git push --set-upstream origin <args>
command! Push                   :Git push
command! ForcePush              :Git push -f
command! Pull                   :Git pull
command! Fetch                  :Git fetch

" Blame
command! Blame                  :Git blame

" Checkout
command! -nargs=1 Checkout      :Git checkout <args>
command! -nargs=1 CreateBranch  :Git checkout -b <args>

" Commit
command! GitStatus              :call GitStatusWindow()
command! Status                 :Git status
command! -nargs=1 Add           :Git add <args>
command! Commit                 :Git commit
command! AmendCommit            :Git commit --amend

" Stash
command! -nargs=1 Stash         :Git stash -u -m <args>
command! Pop                    :Git stash pop
command! Apply                  :Git stash apply
command! -nargs=1 StashShow     :Git stash show -p stash@{<args>}
command! StashList              :Git stash list
command! -nargs=1 StashDrop     :Git stash drop stash@{<args>}
