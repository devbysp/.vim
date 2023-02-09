" -----------------------------------------------------------
" VIM:
" -----------------------------------------------------------
let mapleader = "-"                                                             " Map leader key

" Toggles file browsing window on and off
nnoremap <C-e>                  :NERDTreeToggle<Enter>
nnoremap <C-r>                  :NERDTreeFind<Enter>:noh<Enter>

" Create and navigate tabs
nnoremap <C-w>t                 :tabnew<Enter>
nnoremap <C-h>                  :tabprevious<Enter>
nnoremap <C-l>                  :tabnext<Enter>
nnoremap <C-Left>               :tabprevious<Enter>
nnoremap <C-Right>              :tabnext<Enter>

" Save & exit
nnoremap <C-s>                  :w<Enter>
nnoremap <C-c>                  :wq<Enter>
nnoremap <C-x>                  :q!<Enter>

inoremap <C-s>                  <ESC>:w<Enter>
inoremap <C-c>                  <ESC>:wq<Enter>
inoremap <C-x>                  <ESC>:q!<Enter>

" Distraction free
nnoremap <C-y>                  :Goyo<Enter>
inoremap <C-y>                  <ESC>:Goyo<Enter>

" No highlight
nnoremap <Leader>h              :noh<Enter>

" Goto command line
" nnoremap <Enter>              :

" ------------------------------------------------------------------------------
" GIT:
" ------------------------------------------------------------------------------

" Changes
nnoremap <Leader>gd             :Diff<Enter>

" Log
nnoremap <Leader>lg             :Log<Enter>
nnoremap <Leader>lb             :LogBranch<Space>

" Push And Pull
nnoremap <Leader>gu             :Upstream<space>
nnoremap <C-p>                  :Push<Enter>
nnoremap <C-p>f                 :ForcePush<Enter>
nnoremap <Leader>pl             :Pull<Enter>

" Blame
nnoremap <Leader>bl             :Blame<Enter>

" Checkout
nnoremap <Leader>ch             :Checkout<space>
nnoremap <Leader>cb             :CreateBranch<space>

" Commit
nnoremap <C-g>                  :GitStatus<Enter>
nnoremap <Leader>gs             :Status<Enter>
nnoremap <C-a>                  :Add<space>*<Enter>
nnoremap <C-k>                  :Commit<Enter>
nnoremap <C-k>a                 :AmendCommit<Enter>

" Merge Conflicts
nnoremap <Leader>cf             :Conflicted<Enter>

" Cherry Pick
nnoremap <Leader>cp             :Git cherry-pick<space>

" Stash
nnoremap <Leader>st             :Stash<Enter>
nnoremap <Leader>sp             :Pop<Enter>
nnoremap <Leader>sa             :Apply<Enter>
nnoremap <Leader>sw             :StashShow<Enter>
nnoremap <Leader>sl             :StashList<Enter>
nnoremap <Leader>sd             :StashDrop

" -----------------------------------------------------------
" FIND IN FILES:
" -----------------------------------------------------------
nnoremap <Leader>f              :Find<Space>
nnoremap <Leader>fp             :FindProject<Space>
nnoremap <Leader>ft             :FindTest<Space>
nnoremap <Leader>fw             :Find<Space>"<cword>"<space>src<Enter>

" -----------------------------------------------------------
" LSP:
" -----------------------------------------------------------

" Navigation
nnoremap <Leader>d              :Definition<Enter>
nnoremap <Leader>dv             :DefinitionVert<Enter>
nnoremap <Leader>ds             :DefinitionSplit<Enter>
nnoremap <Leader>rf             :References<Enter>

" Refactoring
nnoremap <Leader>rn             :Rename<Enter>
nnoremap <Leader>fn             :FileRename<Enter>
nnoremap <Leader>im             :Import<Enter>
nnoremap <Leader>ca             :CodeAction<Enter>

" Navigate Errors
nnoremap <Leader>n              :NextError<Enter>
nnoremap <Leader>p              :PreviousError<Enter>

" Display
nnoremap <Leader>dt             :Details<Enter>
nnoremap <Leader>hv             :Hover<Enter>
nnoremap <Leader>qf             :QuickFix<Enter>:copen<Enter>

" -----------------------------------------------------------
" TERMINAL:
" -----------------------------------------------------------
nnoremap <C-t>                  :call TerminalWindow()<Enter>

" -----------------------------------------------------------
" FORMATTERS:
" -----------------------------------------------------------
" nnoremap <Leader>p            :call Prettier("%")<Enter><Enter>

" -----------------------------------------------------------
" SNIPPESTS:
" -----------------------------------------------------------
inoremap <C-n>                  <ESC>:execute(':r '.g:code_snippets_path.'/<cword>')<Enter>kdd
