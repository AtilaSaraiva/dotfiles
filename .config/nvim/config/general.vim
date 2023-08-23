"let fortran_have_tabs=1	      " Concerto de Tabs do Fortran
"set clipboard+=unnamedplus    " Permite copiar texto para programas externos
set timeoutlen=1000 ttimeoutlen=0

"let g:python3_host_prog = '/usr/bin/python'
"let g:python_host_prog = '/usr/bin/python2'

"setlocal spell spelllang=pt_br
" Type :so % to refresh .vimrc after making changes

" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.
set nocompatible

" Leader - ( Spacebar )
let mapleader = " "

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete command
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set autoread      " Reload files changed outside vim

if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.config/nvim/undo  "directory where the undo files will be stored
  endif


" Trigger autoread when changing buffers or coming back to vim in terminal.
au FocusGained,BufEnter * :silent! !

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>
	map <leader>i :setlocal spell! spelllang=pt_br <CR>

" Compile C++ code from within file
map <leader>c :w<CR> :!g++ -o exe % && ./exe<CR>

" to execute shell commands inside neovim
nnoremap <leader>e !!$SHELL<CR>

"map <f9> :w<CR>:make <CR>
map <f9> :w<CR>:vertical terminal make <CR><C-o>


" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
autocmd VimLeave *.tex !texclear %

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

"Set default font in mac vim and gvim
set cursorline    " highlight the current line
set visualbell    " stop that ANNOYING beeping
set wildmenu
set wildmode=list:longest,full

set foldmethod=marker
"" auto-save fold views
"augroup AutoSaveFolds
    "autocmd!
    "autocmd BufWinEnter *.* silent! loadview
"augroup END


"Allow usage of mouse in iTerm
set ttyfast
set mouse=a
" set ttymouse=xterm2

" Make searching better
set gdefault      " Never have to type /g at the end of search / replace again
set ignorecase    " case insensitive searching (unless specified)
set smartcase
set hlsearch
nnoremap <silent> <leader>, :noh<cr> " Stop highlight after searching
set incsearch
set showmatch

" Softtabs, 2 spaces
"set tabstop=4
set shiftwidth=4
set softtabstop=4
"set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Make it obvious where 100 characters is
set textwidth=100
" set formatoptions=cq
set formatoptions=qn1
set wrapmargin=0
set colorcolumn=+1

" Numbers
set number
set numberwidth=5

" Open new split panes to right and bottom, which feels more natural
" set splitbelow
set splitright

if !exists('g:started_by_firenvim')
    set guifont=Inconsolata\ for\ Powerline:h24
    " Auto resize Vim splits to active split
    set winwidth=104
    set winheight=5
    set winminheight=5
    set winheight=999
endif

"HTML Editing
set matchpairs+=<:>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

"Toggle relative numbering, and set to absolute on loss of focus or insert mode
set rnu
function! ToggleNumbersOn()
    set nu!
    set rnu
endfunction
function! ToggleRelativeOn()
    set rnu!
    set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()

"Use enter to create new lines w/o entering insert mode
nnoremap <CR> o<Esc>
"Below is to fix issues with the ABOVE mappings in quickfix window
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" <c-h> is interpreted as <bs> in neovim
" This is a bandaid fix until the team decides how
" they want to handle fixing it...(https://github.com/neovim/neovim/issues/2048)
nnoremap <silent> <bs> :TmuxNavigateLeft<cr>

" Navigate properly when lines are wrapped
nnoremap j gj
nnoremap k gk

" Use tab to jump between blocks, because it's easier
" nnoremap <tab> %
" vnoremap <tab> %

" Set spellfile to location that is guaranteed to exist, can be symlinked to
" Dropbox or kept in Git and managed outside of thoughtbot/dotfiles using rcm.
set spellfile=$HOME/.vim-spell-en.utf-8.add

" Always use vertical diffs
set diffopt+=vertical

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Load up all of our plugins
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype plugin indent on

""" SYSTEM CLIPBOARD COPY & PASTE SUPPORT
set pastetoggle=<F2> "F2 before pasting to preserve indentation
"Copy paste to/from clipboard
vnoremap <C-c> "+y
map <silent><Leader>p :set paste<CR>o<esc>"+]p:set nopaste<cr>"
map <silent><Leader><S-p> :set paste<CR>O<esc>"+]p:set nopaste<cr>"


""" MORE AWESOME HOTKEYS
"
"
" Run the q macro
nnoremap <leader>q @q

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>
" Ag will search from project root
let g:ag_working_path_mode="r"

"Map Ctrl + S to save in any mode
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
" Also map leader + s
map <leader>s <C-S>

" Quickly close windows
nnoremap <leader>x :x<cr>
nnoremap <leader>X :q!<cr>

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" resize panes
nnoremap <silent> <Right> :vertical resize +5<cr>
nnoremap <silent> <Left> :vertical resize -5<cr>
nnoremap <silent> <Up> :resize +5<cr>
nnoremap <silent> <Down> :resize -5<cr>

" inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

" Switch between the last two files
nnoremap <leader>f <c-^>


tnoremap <Esc> <C-\><C-n>:q!<CR>


" AUTOCOMMANDS - Do stuff

" Save whenever switching windows or leaving vim. This is useful when running
" the tests inside vim without having to save all files first.
au FocusLost,WinLeave * :silent! wa

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

"update dir to current file
autocmd BufEnter * silent! cd %:p:h

augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufReadPre *SConstruct* set filetype=python
  autocmd BufReadPre *SConscript* set filetype=python
  autocmd BufReadPre meson.build set filetype=python

  " autocmd BufRead *.jsx set ft=jsx.html
  " autocmd BufNewFile *.jsx set ft=jsx.html

  " Enable spellchecking for Markdown
  autocmd FileType markdown setlocal spell

  " Automatically wrap at 100 characters for Markdown
  autocmd BufRead,BufNewFile *.md setlocal textwidth=100

  " Automatically wrap at 100 characters and spell check git commit messages
  autocmd FileType gitcommit setlocal textwidth=100
  autocmd FileType gitcommit setlocal spell

  " Allow stylesheets to autocomplete hyphenated words
  autocmd FileType css,scss,sass,less setlocal iskeyword+=-
augroup END

" Navigating with guides
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
map <leader>r <Esc>/<++><Enter>"_c4l


"""LATEX
   " Word count:
   autocmd FileType tex map <leader>w :w !detex \| wc -w<CR>
   " Code snippets
   autocmd FileType tex inoremap ,fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
   autocmd FileType tex inoremap ,block \begin{block}{}<Enter><Enter><++><Enter><Enter>\end{block}<Enter><Enter><++><Esc>6kf}f}i
   autocmd FileType tex inoremap ,fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
   autocmd FileType tex inoremap ,eq %<Enter>\begin{equation}<Enter>\end{equation}<Enter>%<Enter><++><Esc>3ko
   autocmd FileType tex inoremap ,exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
   autocmd FileType tex inoremap ,em \emph{}<++><Esc>T{i
   autocmd FileType tex inoremap ,bf \textbf{}<++><Esc>T{i
   autocmd FileType tex vnoremap , <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
   autocmd FileType tex inoremap ,it \textit{}<++><Esc>T{i
   autocmd FileType tex inoremap ,ct \textcite{}<++><Esc>T{i
   autocmd FileType tex inoremap ,cp \parencite{}<++><Esc>T{i
   autocmd FileType tex inoremap ,glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
   autocmd FileType tex inoremap ,x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
   autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
   autocmd FileType tex inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
   autocmd FileType tex inoremap ,li <Enter>\item<Space>
   autocmd FileType tex inoremap ,ref \ref{}<Space><++><Esc>T{i
   autocmd FileType tex inoremap ,tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
   autocmd FileType tex inoremap ,ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
   autocmd FileType tex inoremap ,can \cand{}<Tab><++><Esc>T{i
   autocmd FileType tex inoremap ,con \const{}<Tab><++><Esc>T{i
   autocmd FileType tex inoremap ,v \vio{}<Tab><++><Esc>T{i
   autocmd FileType tex inoremap ,a \href{}{<++>}<Space><++><Esc>2T{i
   autocmd FileType tex inoremap ,sc \textsc{}<Space><++><Esc>T{i
   autocmd FileType tex inoremap ,chap \chapter{}<Enter><Enter><++><Esc>2kf}i
   autocmd FileType tex inoremap ,sec \section{}<Enter><Enter><++><Esc>2kf}i
   autocmd FileType tex inoremap ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
   autocmd FileType tex inoremap ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
   autocmd FileType tex inoremap ,st <Esc>F{i*<Esc>f}i
   autocmd FileType tex inoremap ,beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
   autocmd FileType tex inoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
   autocmd FileType tex nnoremap ,up /usepackage<Enter>o\usepackage{}<Esc>i
   autocmd FileType tex inoremap ,tt \texttt{}<Space><++><Esc>T{i
   autocmd FileType tex inoremap ,bt {\blindtext}
   autocmd FileType tex inoremap ,nu $\varnothing$
   autocmd FileType tex inoremap ,col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
   autocmd FileType tex inoremap ,rn (\ref{})<++><Esc>F}i

"""Nix
autocmd FileType nix inoremap ,meta meta = with lib; {<Enter>description = "<++>";<Enter>homepage = "<++>";<Enter>license = licenses.<++>;<Enter>platforms.<++>;<Enter>maintainers = with maintainers; [ atila ];<Enter>};<Esc>6k^i
