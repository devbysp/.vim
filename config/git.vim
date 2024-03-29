" ------------------------------------------------------------------------------
" GIT CONFIGURATIONS:
" ------------------------------------------------------------------------------

" Fugitive git status window
function! GitStatusWindow()
    execute ":vertical Git"
    setlocal winfixwidth
    vertical resize 50
endfun

function! FileHistory(file)
    silent execute ":GV --follow --" expand(a:file)
endfun

function! FileHistoryForCurrentLine(file, line)
    silent execute ":GV -L".line(a:line).",+1:".expand(a:file)
endfun

" -----------------------------------------------------------
" CUSTOM COMMANDS:
" -----------------------------------------------------------

" Changes
command! Diff                   :vert Gdiffsplit

" Log
command! Log                    :GV HEAD
command! LogMaster              :GV HEAD master origin/master
command! LogFiles               :GV HEAD --name-status
command! LogAll                 :GV --all
command! -nargs=1 LogBranch     :GV HEAD <args>
command! History                :call FileHistory("%")
command! HistoryForLine         :call FileHistoryForCurrentLine("%", ".")

" Commit
command! GitStatus              :call GitStatusWindow()
command! -nargs=1 Add           :Git add <args>
command! Commit                 :Git commit
command! AmendCommit            :Git commit --amend

" Push And Pull
command! Push                   :Git push
command! -nargs=1 Upstream      :Git push --set-upstream origin <args>
command! ForcePush              :Git push -f
command! Pull                   :Git pull
command! Fetch                  :Git fetch

" Blame
command! Blame                  :Git blame

" Checkout
command! -nargs=1 Checkout      :Git checkout <args>
command! -nargs=1 CreateBranch  :Git checkout -b <args>

" Stash
command! -nargs=1 Stash         :Git stash -u -m <args>
command! Pop                    :Git stash pop
command! Apply                  :Git stash apply
command! -nargs=1 StashShow     :Git stash show -p stash@{<args>}
command! StashList              :Git stash list
command! -nargs=1 StashDrop     :Git stash drop stash@{<args>}

" Assume unchanged
command! -nargs=1 AssumeUnchanged        :Git update-index --assume-unchanged <args>
command! -nargs=1 NoAssumeUnchanged      :Git update-index --no-assume-unchanged <args>
