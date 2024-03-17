" -----------------------------------------------------------
" PLUGINS:
" -----------------------------------------------------------
call plug#begin(g:bundle_path)
    " Style
    Plug 'https://github.com/ashfinal/vim-colors-paper'                         " Color scheme: paper
    Plug 'https://github.com/vim-airline/vim-airline'                           " Status line

    " Functionality
    Plug 'https://github.com/MattesGroeger/vim-bookmarks'                       " Bokmarking rows
	  Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }    " Open file browse
    Plug 'https://github.com/ronakg/quickr-preview'                             " Preview quickfix list
    Plug 'https://github.com/mhinz/vim-startify'                                " Recently used or bookmarked files

    " Editing
    Plug 'https://github.com/tpope/vim-surround' 								                " Surrounding ysiw)
    Plug 'https://github.com/tpope/vim-repeat', 								                " Repeats surround commands
	  Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight',          " File coloring for nerd tree

    " Git
    Plug 'https://github.com/tpope/vim-fugitive'                                " Git tool
    Plug 'https://github.com/mhinz/vim-signify'                                 " Git change marker
    Plug 'https://github.com/christoomey/vim-conflicted'                        " Solve conflicts
    Plug 'https://github.com/junegunn/gv.vim'                                   " Git commit browser

    " Coding
    Plug 'https://github.com/dense-analysis/ale'                                " LSP cli (ale)
    Plug 'https://github.com/prabirshrestha/vim-lsp'                            " LSP cli (vim-lsp)
    Plug 'https://github.com/mattn/vim-lsp-settings'                            " LSP cli settings (vim-lsp-settings)
    Plug 'https://github.com/mattn/emmet-vim'                                   " Html tag generator
    Plug 'https://github.com/vim-scripts/loremipsum'                            " Loremipsum generator
    Plug 'https://github.com/alvan/vim-closetag'                                " Auto close html tags
    Plug 'https://github.com/purescript-contrib/purescript-vim'                 " Purescript syntax highlighting

    " Copilot
    Plug 'https://github.com/github/copilot.vim'                                " OpenAI Codex to suggest code and entire functions in real-time / requires python3 and openai-cli

call plug#end()

" If bundle directory does not exists the run the PlugInstall command
autocmd VimEnter * if !isdirectory(g:bundle_path) | PlugInstall | endif

" -----------------------------------------------------------
" SOURCING SETTING FILES:
" -----------------------------------------------------------
" Style
execute(':source '.g:plug_config_path.'/vim-colors-paper.vim')
execute(':source '.g:plug_config_path.'/vim-airline.vim')

" Functionality
execute(':source '.g:plug_config_path.'/vim-bookmarks.vim')
execute(':source '.g:plug_config_path.'/nerdtree.vim')
execute(':source '.g:plug_config_path.'/quickr-preview.vim')
execute(':source '.g:plug_config_path.'/vim-startify.vim')

" Editing
execute(':source '.g:plug_config_path.'/vim-nerdtree-syntax-highlight.vim')

" Coding
execute(':source '.g:plug_config_path.'/ale.vim')
execute(':source '.g:plug_config_path.'/emmet-vim.vim')
execute(':source '.g:plug_config_path.'/loremipsum.vim')
execute(':source '.g:plug_config_path.'/vim-closetag.vim')
