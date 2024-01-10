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
nnoremap <C-Right>              :tabnext<Enter>

" Save & exit
nnoremap <C-s>                  :w<Enter>
nnoremap <C-c>                  :wq<Enter>
nnoremap <C-x>                  :q!<Enter>

inoremap <C-s>                  <ESC>:w<Enter>
inoremap <C-c>                  <ESC>:wq<Enter>
inoremap <C-x>                  <ESC>:q!<Enter>

" Distraction free
nnoremap <C-w>d                  :Goyo<Enter>
inoremap <C-w>d                  <ESC>:Goyo<Enter>

" No highlight
nnoremap <Leader>h              :noh<Enter>

" ------------------------------------------------------------------------------
" GIT:
" ------------------------------------------------------------------------------
nnoremap <C-d>                  :Diff<Enter>
nnoremap <C-l>                  :Log<Enter>
nnoremap <C-l>m                 :LogMaster<Enter>
nnoremap <C-l>f                 :LogFiles<Enter>
nnoremap <C-l>a                 :LogAll<Enter>
nnoremap <C-l>b                 :LogBranch
nnoremap <C-q>                  :History<Enter>
nnoremap <C-q>l                 :HistoryForLine<Enter>
nnoremap <C-g>                  :GitStatus<Enter>
nnoremap <C-a>                  :Add<space>*<Enter>
nnoremap <C-k>                  :Commit<Enter>
nnoremap <C-k>a                 :AmendCommit<Enter>
nnoremap <C-p>                  :Push<Enter>
nnoremap <C-p>u                 :Upstream<space>
nnoremap <C-p>f                 :ForcePush<Enter>
nnoremap <C-p>l                 :Pull<Enter>

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

" -----------------------------------------------------------
" QUICK FIX:
" -----------------------------------------------------------
nnoremap <Leader>qf             :QuickFix<Enter>:copen<Enter>
nnoremap <leader>q              :ClearQuickfixList<Enter>

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
" Using emmet plugint instead. Hotkey is the same.
" inoremap <C-y>                  <ESC>:execute(':r '.g:code_snippets_path.'/<cword>')<Enter>kdd
