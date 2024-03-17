" -----------------------------------------------------------
" VIM:
" -----------------------------------------------------------
let mapleader = "-"                                                             " Map leader key

" Alterntive to escape char
inoremap jj                     <ESC>l

" Toggles file browsing window on and off
nnoremap <C-e>                  :NERDTreeToggle<Enter>
nnoremap <Leader>e              :NERDTreeFind<Enter>:noh<Enter>

" Create and navigate tabs
nnoremap <C-w>t                 :tabnew<Enter>
nnoremap <C-Left>               :tabprevious<Enter>
nnoremap <C-h>                  :tabprevious<Enter>
nnoremap <C-Right>              :tabnext<Enter>
nnoremap <C-l>                  :tabnext<Enter>

" Save & exit
nnoremap <C-s>                  :w<Enter>
nnoremap <C-c>                  :wq<Enter>
nnoremap <C-x>                  :q!<Enter>

inoremap <C-s>                  <ESC>:w<Enter>
inoremap <C-c>                  <ESC>:wq<Enter>
inoremap <C-x>                  <ESC>:q!<Enter>

" No highlight
nnoremap <Leader>h              :noh<Enter>

" ------------------------------------------------------------------------------
" GIT:
" ------------------------------------------------------------------------------
" Changes
nnoremap <C-d>                  :Diff<Enter>

" Log
nnoremap <C-q>                  :History<Enter>
nnoremap <C-q>l                 :HistoryForLine<Enter>
nnoremap <Leader>l              :Log<Enter>
nnoremap <Leader>lm             :LogMaster<Enter>
nnoremap <Leader>lf             :LogFiles<Enter>
nnoremap <Leader>la             :LogAll<Enter>
nnoremap <Leader>lb             :LogBranch<space>

" Commit
nnoremap <C-g>                  :GitStatus<Enter>
nnoremap <C-a>                  :Add<space>*<Enter>
nnoremap <C-k>                  :Commit<Enter>
nnoremap <C-k>a                 :AmendCommit<Enter>

" Push and pull
nnoremap <C-p>                  :Push<Enter>
nnoremap <C-p>u                 :Upstream<space>
nnoremap <C-p>f                 :ForcePush<Enter>
nnoremap <C-p>l                 :Pull<Enter>
nnoremap <C-p>f                 :Fetch<Enter>

" Blame
nnoremap <C-q>b                 :Blame<Enter>

" -----------------------------------------------------------
" LSP:
" -----------------------------------------------------------

" Navigation
nnoremap <Leader>df             :Definition<Enter>
nnoremap <Leader>dv             :DefinitionVert<Enter>
nnoremap <Leader>ds             :DefinitionSplit<Enter>
nnoremap <Leader>rf             :References<Enter>

" Refactoring
nnoremap <Leader>rn             :Rename<Enter>
nnoremap <Leader>fr             :FileRename<Enter>
nnoremap <Leader>im             :Import<Enter>
nnoremap <Leader>ca             :CodeAction<Enter>

" Navigate Errors
nnoremap <Leader>n              :NextError<Enter>
nnoremap <Leader>p              :PreviousError<Enter>

" Display
nnoremap <Leader>dt             :Details<Enter>
nnoremap <Leader>hv             :Hover<Enter>

" -----------------------------------------------------------
" QUICK FIX:
" -----------------------------------------------------------
nnoremap <Leader>qf             :QuickFix<Enter>:copen<Enter>
nnoremap <leader>q              :ClearQuickfixList<Enter>

" -----------------------------------------------------------
" TERMINAL:
" -----------------------------------------------------------
nnoremap <C-t>                  :call TerminalWindow()<Enter>
tnoremap <ESC>                  <C-\><C-N>

" -----------------------------------------------------------
" FIND:
" -----------------------------------------------------------
nnoremap <Leader>f              :FindInFiles<space>src/**/*.ts*<space>
nnoremap <Leader>ff             :find<space>
nnoremap <Leader>fb             :buffer<space>

" -----------------------------------------------------------
" EMMET:
" -----------------------------------------------------------
" Leader Key: <Leader>m ,
" Usage: section>(h1>lorem3)+div>p>lorem100*2

" -----------------------------------------------------------
" FOLDING:
" -----------------------------------------------------------
"
"| Keybinding | Action                                                      |
"|:----------:|:-----------------------------------------------------------:|
"| zf#j       | creates a fold from the cursor down # lines.                |
"| zf/        | string creates a fold from the cursor to string.            |
"| zj         | moves the cursor to the next fold.                          |
"| zi         | toggle the variable foldenable and unfolds everything.      |
"| zk         | moves the cursor to the previous fold.                      |
"| za         | toggle a fold at the cursor.                                |
"| zo         | opens a fold at the cursor.                                 |
"| zO         | opens all folds at the cursor.                              |
"| zc         | closes a fold under cursor.                                 |
"| zm         | increases the foldlevel by one.                             |
"| zM         | closes all open folds.                                      |
"| zr         | decreases the foldlevel by one.                             |
"| zR         | decreases the foldlevel to zero -- all folds will be open.  |
"| zd         | deletes the fold at the cursor.                             |
"| zE         | deletes all folds.                                          |
"| [z         | move to start of open fold.                                 |
"| ]z         | move to end of open fold.                                   |

" -----------------------------------------------------------
" BOOKMARK:
" -----------------------------------------------------------
"
"| Action                                        | Keybinding   | Command                   |
"|-----------------------------------------------|:------------:|:-------------------------:|
"| Add/remove bookmark at current line           | mm           | :BookmarkToggle           |
"| Add/edit/remove annotation at current line    | mi           | :BookmarkAnnotate <TEXT>  |
"| Jump to next bookmark in buffer               | mn           | :BookmarkNext             |
"| Jump to previous bookmark in buffer           | mp           | :BookmarkPrev             |
"| Show all bookmarks (toggle)                   | ma           | :BookmarkShowAll          |
"| Clear bookmarks in current buffer only        | mc           | :BookmarkClear            |
"| Clear bookmarks in all buffers                | mx           | :BookmarkClearAll         |
