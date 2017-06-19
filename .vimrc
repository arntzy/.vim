let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'oblique')
call pathogen#infect()

syntax on
"syntax enable
set number "Enables line numbering
filetype plugin indent on
"set completeopt-=preview
set nocp
set noerrorbells visualbell t_vb=
set showmatch "Highlights matching brackets in programming languages
set autoindent  "If you're indented, new lines will also be indented
set smartindent  "Automatically indents lines after opening a bracket in programming languages
set backspace=2  "This makes the backspace key function like it does in other programs.

"""""""""""""""""
" COLOR FUCKERY "
"""""""""""""""""
set background=dark

""""""""""""""
" railscasts "
""""""""""""""
colorscheme railscasts

""""""""""""""
" crunchbang "
""""""""""""""
" set t_Co=16
" colorscheme crunchbang

"""""""""""
" gruvbox "
"""""""""""
" let g:gruvbox_italic=1
" let g:gruvbox_italicize_strings=1
" let g:gruvbox_contrast_dark='medium'
" colorscheme gruvbox

"""""""""""""""""""
" color overrides "
"""""""""""""""""""
" highlight clear SignColumn
" highlight VertSplit    ctermbg=236
" highlight ColorColumn  ctermbg=237
" highlight LineNr       ctermbg=236 ctermfg=240
" highlight CursorLineNr ctermbg=236 ctermfg=240
" highlight CursorLine   ctermbg=236
" highlight StatusLineNC ctermbg=238 ctermfg=0
" highlight StatusLine   ctermbg=240 ctermfg=12
" highlight IncSearch    ctermbg=3   ctermfg=1
" highlight Search       ctermbg=1   ctermfg=3
" highlight Visual       ctermbg=3   ctermfg=0
" highlight Pmenu        ctermbg=240 ctermfg=12
" highlight PmenuSel     ctermbg=3   ctermfg=1
" highlight SpellBad     ctermbg=0   ctermfg=1



""""""""
" TERN "
""""""""

let g:tern_map_keys = 1
let g:tern_map_prefix="<leader>"

"""""""""""
" TABBING "
"""""""""""
set tabstop=2  "How much space Vim gives to a tab
set softtabstop=2 " number of spaces in tab when editing
set smarttab "Improves tabbing
set expandtab " tabs are spaces
set shiftwidth=2  "Assists code formatting

"CURSOR----------
"set cursorline          " highlight current line
"setlocal spell  "Enables spell checking (CURRENTLY DISABLED because it's kinda annoying). Make sure to uncomment the next line if you use this.
"set spellfile=~/.vimwords.add  "The location of the spellcheck dictionary. Uncomment this line if you uncomment the previous line.
set foldmethod=manual  "Lets you hide sections of code
"let &t_Co=256
"set background=dark
"colorscheme anderson  
"--- The following adds a sweet menu, press F4 to use it.
source $VIMRUNTIME/menu.vim
set cpo-=<
set wcm=<c-z>
map <f4> :emenu <c-z>
"--- End sweet menu

"STATUS LINE--------
set laststatus=2
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

"BUFFER MAPPING-------------
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr> 

"SEARCH OPTIONS-------------------
set ic
map \s :set smartcase!<CR>
set incsearch

""""""""""""""""""""""""""""""""
" ARNTZY BOY CONFIGS FROM HELL "
""""""""""""""""""""""""""""""""

"Pretty Printing for a little Pretty Pony
command! PrettyPrintJSON %!python -m json.tool
command! PrettyPrintHTML !tidy -mi -html -wrap 0 %
command! PrettyPrintXML !tidy -mi -xml -wrap 0 %

"deletes a buffer without closing the split window
nnoremap <C-c> :bp\|bd #<CR>
com! FormatJSON %!python -m json.tool
nnoremap <leader><space> :noh<cr>   " Clear search highlighting with ,<space>
nnoremap <tab> :bnext<cr>           " Tab to next buffer
nnoremap <s-tab> :bprevious<cr>     " Shift-tab to previous buffer
nnoremap <leader><leader> <C-^>     " Switch between last two buffers

"set the yank to the system clipboard as well, comment out if strange behavior
set clipboard=unnamed
" noremap % v%

"""""""""""""""""""
" MISC FROM JAMIS "
"""""""""""""""""""

" remap <leader> to ,
let mapleader = ","
"
" brilliant remap of : to ; credit to @sagnew
nnoremap ; :

" disable line wrapping; I often do :set wrap when dealing with wide files.
set nowrap

" I like being able to scroll with the mouse, since it's so close-by
" on my laptop keyboard anyway; f4 disables it for ease of copying single
" lines, and f3 reenables it
set mouse=a 
nnoremap <F3> :set mouse=a<CR>
"nnoremap <F4> :set mouse=<CR>

" Key bindings for adjusting the tab/shift width.
nnoremap <leader>w2 :setlocal tabstop=2<CR>:setlocal shiftwidth=2<CR>
nnoremap <leader>w4 :setlocal tabstop=4<CR>:setlocal shiftwidth=4<CR>
nnoremap <leader>w8 :setlocal tabstop=8<CR>:setlocal shiftwidth=8<CR>

" Save current file with root privileges
cmap w!! w !sudo tee >/dev/null %

" f2 to toggle paste mode; ie, when you want to paste stuff into vim, hit f2
" and autoindent and a couple of other things will be temporarily shut off so
" it gets pasted in correctly. 
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
" A near vim-pasta like experience for pasting...
nnoremap <leader>p p`[v`]=

" color the normally paren-highlight 
"highlight MatchParen ctermfg=darkblue

" this was to make searches readable in otherwise awful coloring
" hi Search cterm=NONE ctermfg=grey ctermbg=darkblue
" hi Visual cterm=NONE ctermfg=black ctermbg=darkyellow

" fix bug with hitting shift+o to add a new line before
" it normally waits like 5 seconds to do anything when you use shift+o, this makes it immediate
set timeout timeoutlen=1000 ttimeoutlen=100

" long syntax highlighting slows down vim
set synmaxcol=512

" map save and quit to Q
nnoremap <silent> Q ZZ

" <Ctrl-l> removes search highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>

" keep visual selection when indenting/outdenting
vnoremap < <gv
vnoremap > >gv

" make tab completion in :e and the like more like bash
set wildmode=longest:full,full
set wildmenu

" my sexy tool for rearranging vim windows; grab a window with ,u and paste it
" with ,h ,j ,k ,l which put it relative to the window you're in when you use them
" there's also ,<shift-u> to copy a window
let g:wingrab_last_buffer = -1
function! Wincp()
    let g:wingrab_last_buffer = bufnr("%")
endfunction

nnoremap ,u :call Wincp()<CR>:hide<CR><C-=><ESC><ESC>
nnoremap ,<S-U> :call Wincp()<CR><ESC><ESC>
nnoremap ,h :aboveleft vnew<CR>:execute "buffer! " . g:wingrab_last_buffer<CR><C-=><ESC><ESC>
nnoremap ,l :rightbelow vnew<CR>:execute "buffer! " . g:wingrab_last_buffer<CR><C-=><ESC><ESC>
nnoremap ,k :aboveleft new<CR>:execute "buffer! " . g:wingrab_last_buffer<CR><C-=><ESC><ESC>
nnoremap ,j :rightbelow new<CR>:execute "buffer! " . g:wingrab_last_buffer<CR><C-=><ESC><ESC>

" show the version of this file that is currently committed to git, if we're in a git repo; useless otherwise
nnoremap ,z :vnew \| setlocal syntax=<C-r>=&syntax<CR> \| r !git show HEAD:<C-r>=bufname("%")<CR><CR><ESC>:setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nomodifiable<CR><ESC><ESC>

" ,pf runs pytest on the current file and shows its output in a new window
nnoremap ,pf :vnew \| r !py.test <C-r>=bufname("%")<CR><CR><ESC>:setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nomodifiable<CR><ESC><ESC>

" ,pa runs pytest in the directory vim was opened from with no filtering as to what is run
nnoremap ,pa :vnew \| r !py.test<CR><ESC>:setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nomodifiable<CR><ESC><ESC>

" hard-reset currently open file, to reset things like :set wrap to defaults
"nnoremap ,r :e __nonexistantfile__ \| e <C-r>=bufname("%")<CR><CR>

" ,rs searchs and replaces globally the word under the cursor
nnoremap <Leader>rs :%s/\<<C-r><C-w>\>//g<Left><Left>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN CONFIG
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
packadd! matchit

"instant markdown previewer
let g:instant_markdown_autostart = 0

"NERDTree --------------
" ,n opens nerdtree if you ever want it
nnoremap ,n :NERDTree<CR>
"toggle NERDTree
silent! nmap <C-p> :NERDTreeToggle<CR>
let g:NERDTreeMapActivateNode="o"
let NERDTreeShowHidden=1

"vim-latex-live-preview
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'

"vim-closetags ---------
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js"

"DelimitMate --------
let delimitMate_expand_cr = 1

"HDEVTOOLS -------
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F5> :HdevtoolsClear<CR>
au FileType haskell nnoremap <buffer> <silent> <F6> :HdevtoolsInfo<CR>

"NEOCOMPLETE ------------------------
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1

"Enable Omni Completion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"GHC-MOD ---------------------------

" Reload
map <silent> tu :call GHC_BrowseAll()<CR>
" Type Lookup
map <silent> tw :call GHC_ShowType(1)<CR>

"VIM-POLYGLOT SYNTAX HIGHLIGHTING -----------
let g:jsx_ext_required = 0

"BETTER-JAVASCRIPT-COMPLETION -------------
let g:vimjs#casesensistive = 1
" Enabled by default. flip the value to make completion matches case insensitive

let g:vimjs#smartcomplete = 0
" Disabled by default. Enabling this will let vim complete matches at any location
" e.g. typing 'ocument' will suggest 'document' if enabled.

let g:vimjs#chromeapis = 0
" Disabled by default. Toggling this will enable completion for a number of Chrome's JavaScript extension APIs

let g:javascript_plugin_jsdoc = 1
" enables syntax highlighting for JSDOC

"SYNTASTIC -------
map <silent> <Leader>e :Errors<CR>
map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_ocaml_checkers = ['merlin']
let g:syntastic_python_pylint_args = ['--errors-only']
let g:syntastic_javascript_checkers = ['eslint'] 
let g:loaded_syntastic_haskell_ghc_mod_checker = 1

"VIM-SLIME --------
let g:slime_target = "tmux"
let g:slime_paste_file = tempname()


"PYMODE -------
let g:pymode_folding = 0
let g:pymode_trim_whitespaces = 1
let g:pymode_lint_on_write = 1
let g:pymode_rope = 0
let g:pymode_options_colorcolumn = 0

"ULTISNIPS ----------
let g:UltiSnipsSnippetsDir=$HOME.'/.vim/sniplets'
let g:UltiSnipsSnippetDirectories=['UltiSnips', 'sniplets']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


"""""""""""""""""""
" YOU COMPLETE ME "
"""""""""""""""""""
let g:ycm_use_ultisnips_completer = 1

"BOXES --------------
autocmd BufEnter * nmap ,mc !!boxes -d shell<CR>
autocmd BufEnter * vmap ,mc !boxes -d shell<CR>
autocmd BufEnter * nmap ,xc !!boxes -d shell -r<CR>
autocmd BufEnter * vmap ,xc !boxes -d shell -r<CR>
autocmd BufEnter *.html nmap ,mc !!boxes -d html-cmt<CR>
autocmd BufEnter *.html vmap ,mc !boxes -d html-cmt<CR>
autocmd BufEnter *.html nmap ,xc !!boxes -d html-cmt -r<CR>
autocmd BufEnter *.html vmap ,xc !boxes -d html-cmt -r<CR>
autocmd BufEnter *.[chly],*.[pc]c nmap ,mc !!boxes -d c-cmt<CR>
autocmd BufEnter *.[chly],*.[pc]c vmap ,mc !boxes -d c-cmt<CR>
autocmd BufEnter *.[chly],*.[pc]c nmap ,xc !!boxes -d c-cmt -r<CR>
autocmd BufEnter *.[chly],*.[pc]c vmap ,xc !boxes -d c-cmt -r<CR>
autocmd BufEnter *.js nmap ,mc !!boxes -d c<CR>
autocmd BufEnter *.js vmap ,mc !boxes -d c<CR>
autocmd BufEnter *.js nmap ,xc !!boxes -d c -r<CR>
autocmd BufEnter *.js vmap ,xc !boxes -d c -r<CR>
autocmd BufEnter *.C,*.cpp,*.java nmap ,mc !!boxes -d java-cmt<CR>
autocmd BufEnter *.C,*.cpp,*.java vmap ,mc !boxes -d java-cmt<CR>
autocmd BufEnter *.C,*.cpp,*.java nmap ,xc !!boxes -d java-cmt -r<CR>
autocmd BufEnter *.C,*.cpp,*.java vmap ,xc !boxes -d java-cmt -r<CR>
autocmd BufEnter .vimrc nmap ,mc !!boxes -d vimbox<CR>
autocmd BufEnter .vimrc vmap ,mc !boxes -d vimbox<CR>
autocmd BufEnter .vimrc nmap ,xc !!boxes -d vimbox -r<CR>
autocmd BufEnter .vimrc vmap ,xc !boxes -d vimbox -r<CR>


"FIGLET --------------
vmap ,fs !figlet -cf slant <CR>
vmap ,fr !figlet -c <CR>

" nerdcommenter -----------
let g:NERDSpaceDelims = 1
let NERDRemoveExtraSpaces = 1

"LILYPOND Vim mode -- If this leads to errors, comment out the next 4 lines. 
"filetype off
"set runtimepath+=/Applications/LilyPond.app/Contents/Resources/share/lilypond/current/vim
"filetype on
"syntax on

""""""""""""""""""""""""""""""""""""""
" LOCATION LIST AND QUICKFIX WINDOWS "
""""""""""""""""""""""""""""""""""""""
noremap <leader>c :ccl <bar> lcl<CR>

"""""""""""""""""""
" FZF AND RIPGREP "
"""""""""""""""""""
noremap <leader>f :Files ~<CR>

let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ -g "*.{js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf}"
  \ -g "!{.git,node_modules,vendor}/*" '

command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)
