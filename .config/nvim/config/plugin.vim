" do vim wiki
set nocompatible
filetype plugin on
syntax on

let g:latex_to_unicode_auto = 1

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

let g:lf_replace_netrw = 1 " Open lf when vim opens a directory

" fix code
"nmap <F2> :ALEFix<CR>
"imap <F2> <C-o>:ALEFix<CR>

"let g:ale_fixers = {'python': [

"vim-syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"nnoremap m d
"xnoremap m d

"nnoremap mm dd
"nnoremap M D


" languagetool
"let g:languagetool_server_jar='/usr/share/java/languagetool/languagetool-server.jar'
"let g:languagetool_lang = 'en'


" deoplete
"   setting python hosts
" tell deoplete where to search right binarys
"let g:deoplete#sources#jedi#python_path=expand('$VIRTUAL_ENV/bin/python')
""   fallback
"let g:deoplete#sources#jedi#extra_path='/bin/python'
"let g:jedi#auto_initialization = 0
"" Use deoplete.
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#auto_completion_start_length = 0
"let g:deoplete#enable_camel_case = 1
" setting a little delay for windows to appear
"call deoplete#custom#option('auto_complete_delay', 50)




" Vimtex options

    let g:tex_flavor = "latex"
    let g:vimtex_complete_close_braces = 1
    let g:vimtex_view_method = 'zathura'

  " A expressão abaixo tem como função habilitar autocompletação utilizando deoplete
"  if !exists('g:deoplete#omni#input_patterns')
"      let g:deoplete#omni#input_patterns = {}
"  endif
"  let g:deoplete#omni#input_patterns.tex = '\\(?:'
"        \ .  '\w*cite\w*(?:\s*\[[^]]*\]){0,2}\s*{[^}]*'
"        \ . '|\w*ref(?:\s*\{[^}]*|range\s*\{[^,}]*(?:}{)?)'
"        \ . '|hyperref\s*\[[^]]*'
"        \ . '|includegraphics\*?(?:\s*\[[^]]*\]){0,2}\s*\{[^}]*'
"        \ . '|(?:include(?:only)?|input)\s*\{[^}]*'
"        \ . '|\w*(gls|Gls|GLS)(pl)?\w*(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
"        \ . '|includepdf(\s*\[[^]]*\])?\s*\{[^}]*'
"        \ . '|includestandalone(\s*\[[^]]*\])?\s*\{[^}]*'
"
"        j
"
"        \ .')'

" Deoplete options

    " Use deoplete.
    let g:deoplete#enable_at_startup = 1

"colorscheme molokai
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi Search ctermbg=yellow ctermfg=black
hi PmenuSel ctermbg=yellow ctermfg=black
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeIgnore = ['\.pyc$','\.o$']
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_default'
let g:airline_mode_map = {
        \ '__' : '------',
        \ 'n'  : 'N',
        \ 'i'  : 'I',
        \ 'R'  : 'R',
        \ 'v'  : 'V',
        \ 'V'  : 'V',
        \ 'c'  : 'C',
        \ '' : 'V',
        \ 's'  : 'S',
        \ 'S'  : 'S',
        \ '' : 'S',
        \ 't'  : 'T',
        \ }
let g:airline_section_b = '[%{gitbranch#name()}]'


nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a/ :Tabularize /\/\/<CR>
vmap <Leader>a/ :Tabularize /\/\/<CR>
nmap <Leader>as :Tabularize /::<CR>
vmap <Leader>as :Tabularize /::<CR>
nmap <Leader>a& :Tabularize /&<CR>
vmap <Leader>a& :Tabularize /&<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

nmap s <Plug>(easymotion-overwin-f)

