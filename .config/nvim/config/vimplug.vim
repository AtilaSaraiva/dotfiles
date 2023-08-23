call plug#begin('~/.local/share/nvim/plugged')

Plug 'BeneCollyridam/futhark-vim'

Plug 'JuliaEditorSupport/julia-vim'

Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

"" Use release branch (recommend)
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'ptzz/lf.vim'
Plug 'voldikss/vim-floaterm'

" vim-nix
Plug 'LnL7/vim-nix'


"Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/dense-analysis/ale'
Plug 'https://github.com/moll/vim-node'

"if has('nvim')
    "Plug 'vigoux/LanguageTool.nvim'  " asynchronous grammar checker
"else
    "Plug 'dpelle/vim-LanguageTool'   " grammar checker
"endif

" deoplete para autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Vimtex
Plug 'https://github.com/lervag/vimtex'

Plug 'https://github.com/tpope/vim-fugitive'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'cometsong/CommentFrame.vim'
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
Plug 'dbeniamine/cheat.sh-vim'
Plug 'triglav/vim-visual-increment'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'github/copilot.vim'
"Plug 'tpope/vim-commentary'
if !exists('g:started_by_firenvim')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    "" Deoplete
    "Plug 'zchee/deoplete-jedi'     " deoplete python source
    " TabNine deoplete: general completions every filetype
    "if has('win32') || has('win64')
        "Plug 'tbodt/deoplete-tabnine',
            "\ { 'do': 'powershell.exe .\install.ps1' }
    "else
        "Plug 'tbodt/deoplete-tabnine',
            "\ { 'do': './install.sh' }
    "endif
endif
Plug 'itchyny/vim-gitbranch'
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
Plug 'quabug/vim-gdscript', { 'for': 'gdscript' }
Plug 'jceb/vim-orgmode', { 'for': 'org' }
Plug 'tpope/vim-speeddating', { 'for': 'org' }
Plug 'https://github.com/godlygeek/tabular'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/szw/vim-maximizer'
Plug 'https://github.com/tpope/vim-obsession'
Plug 'https://github.com/tpope/vim-sensible'
"Plug 'https://github.com/svermeulen/vim-cutlass'
Plug 'preservim/nerdcommenter'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-repeat'
Plug 'vimwiki/vimwiki'
"Plug 'davidhalter/jedi-vim'
Plug 'jiangxincode/mpi.vim'


" Octo vim and its dependencies
"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'
"Plug 'pwntester/octo.nvim'

Plug 'https://github.com/easymotion/vim-easymotion'

" Initialize plugin system
call plug#end()
