" vim-plug auto installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

""""""""""""
" vim-plug "
""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'jpo/vim-railscasts-theme'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-obsession'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'ambv/black'
Plug 'janko-m/vim-test'
Plug 'manicmaniac/coconut.vim'
""""""""""""""""""""""""""""
" Tmux/Ipython Integration "
""""""""""""""""""""""""""""
Plug 'benmills/vimux'
Plug 'julienr/vim-cellmode'
""""""""""""
" Hardtime "
""""""""""""
Plug 'takac/vim-hardtime'
"""""""""
" TIDAL "
"""""""""
Plug 'tidalcycles/vim-tidal'
""""""""""""
" Snippets "
""""""""""""
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
""""""""""""""
" Completion "
""""""""""""""
""""""""""""
" JEDI-VIM "
""""""""""""
" Plug 'davidhalter/jedi-vim'
"""""""""""""""""
" YOUCOMPLETEME "
"""""""""""""""""
Plug 'valloric/youcompleteme'
""""""""""""
" DEOPLETE "
""""""""""""
" if has('nvim')
  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
  " Plug 'Shougo/deoplete.nvim'
  " Plug 'roxma/nvim-yarp'
  " Plug 'roxma/vim-hug-neovim-rpc'
" endif
""""""""
" NCM2 "
""""""""
" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'
" " NOTE: you need to install completion sources to get completions. Check
" " our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-tmux'
" Plug 'ncm2/ncm2-path'
" Plug 'ncm2/ncm2-jedi'
""""""""
" Rest "
""""""""
Plug 'tpope/vim-unimpaired'
Plug 'ervandew/supertab'
Plug 'alvan/vim-closetag'

"""""""""""""""
" DELIMITMATE "
"""""""""""""""
" Plug 'raimondi/delimitmate'

Plug 'tpope/vim-fugitive'
Plug 'dahu/vim-fanfingtastic'
Plug 'tpope/vim-eunuch'
Plug 'terryma/vim-multiple-cursors'

""""""""""""""""""""""""""""""""""""""""
" Old Plugs From Previous Installation "
""""""""""""""""""""""""""""""""""""""""
" chuck.vim
" elm-vim
" gruvbox
" inori
" oblique
" pydoc.vim
" repeat
" slime
" syntastic
" syntax
" tern_for_vim
" tlib_vim
" vim-addon-mw-utils
" vim-autoformat
" vim-better-javascript-completion
" vim-grepper
" vim-hdevtools
" vim-javascript
" vim-javascript-syntax
" vim-latex-live-preview
" vim-lilypond-integrator
" vim-tidal
" vim-vimtex
call plug#end()


"""""""""""""""""
" START OF FILE "
"""""""""""""""""
syntax on
"syntax enable
set number "Enables line numbering
filetype plugin indent on
" set completeopt-=preview

set nocp
set noerrorbells visualbell t_vb=
set showmatch "Highlights matching brackets in programming languages
set autoindent  "If you're indented, new lines will also be indented
set smartindent  "Automatically indents lines after opening a bracket in programming languages
set backspace=2  "This makes the backspace key function like it does in other programs.
set clipboard-=autoselect
set guioptions-=a

"""""""""""""""""
" COLOR FUCKERY "
"""""""""""""""""
set background=dark

"""""""""""""
" LIGHTLINE "
"""""""""""""
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
""""""""""""""
" RAILSCASTS "
""""""""""""""
colorscheme railscasts

""""""""""""""
" CRUNCHBANG "
""""""""""""""
" set t_Co=16
" colorscheme crunchbang

"""""""""""
" GRUVBOX "
"""""""""""
" let g:gruvbox_italic=1
" let g:gruvbox_italicize_strings=1
" let g:gruvbox_contrast_dark='medium'
" colorscheme gruvbox

"""""""""""""""""""
" COLOR OVERRIDES " 
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
" let g:SuperTabClosePreviewOnPopupClose = 1


""""""""""
" CURSOR "
""""""""""
set foldmethod=manual  "Lets you hide sections of code

""""""""
" MENU "
""""""""
" The following adds a sweet menu? - press F4 to use it.
source $VIMRUNTIME/menu.vim
set cpo-=<
set wcm=<c-z>
map <f4> :emenu <c-z>

"""""""""""""""
" STATUS LINE "
"""""""""""""""
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

"""""""""""""
" CLIPBOARD "
"""""""""""""
"set the yank to the system clipboard as well, comment out if strange behavior
set clipboard=unnamed


""""""""""""""""""""""""""""""""
" ARNTZY BOY CONFIGS FROM HELL "
""""""""""""""""""""""""""""""""

"""""""""""""""""
" MAPS / REMAPS "
"""""""""""""""""
" remap <leader> to ,
let mapleader = ","

" brilliant remap of : to ; credit to @sagnew
nnoremap ; :

" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" replace currently selected text with default register without yanking it
vnoremap <leader>p "_dP

"deletes a buffer without closing the split window
nnoremap <C-c> :bp\|bd #<CR>

" clear search highlighting in case it is on
nnoremap <leader><space> :noh<cr>

" Switch between last two buffers
nnoremap <leader><leader> <C-^> 

" buffer mapping, 'go next', 'go previous', 'go delete...that one's a stretch'
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr> 

""""""""""""
" COMMANDS "
""""""""""""
" Pretty Printing for a little Pretty Pony
command! PrettyPrintJSON %!python -m json.tool
command! PrettyPrintHTML !tidy -mi -html -wrap 0 %
command! PrettyPrintXML !tidy -mi -xml -wrap 0 %

""""""""""""""""""
" SEARCH OPTIONS "
""""""""""""""""""
set ic
map \s :set smartcase!<CR>
set incsearch
set nohlsearch

""""""""""""""""
" VIM-CELLMODE "
""""""""""""""""
let g:cellmode_default_mappings='0'

"""""""""
" BLACK "
"""""""""
autocmd BufWritePre *.py execute ':Black'
let g:black_virtualenv = '~/venv/black'

""""""""""""""
" NCM2 STUFF "
""""""""""""""
" enable ncm2 for all buffers
" autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANT: :help Ncm2PopupOpen for more information
" set completeopt=noinsert,menuone,noselect

"""""""""
" VIMUX "
"""""""""
" send selected text to the shell
vnoremap <leader>tt y:call VimuxRunCommand(@")<cr>
" send a larger selection of text to the shell
autocmd FileType python vnoremap <leader>te "+y:call VimuxRunCommand("%paste")<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" TODO: START CLEANING/ORGANIZING HERE AND BELOW "
""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""
" MISC FROM JAMIS "
"""""""""""""""""""

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
" nnoremap ,z :vnew \| setlocal syntax=<C-r>=&syntax<CR> \| r !git show HEAD:<C-r>=bufname("%")<CR><CR><ESC>:setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nomodifiable<CR><ESC><ESC>

" ,pf runs pytest on the current file and shows its output in a new window
" nnoremap ,pf :vnew \| r !py.test <C-r>=bufname("%")<CR><CR><ESC>:setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nomodifiable<CR><ESC><ESC>

" ,pa runs pytest in the directory vim was opened from with no filtering as to what is run
" nnoremap ,pa :vnew \| r !py.test<CR><ESC>:setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nomodifiable<CR><ESC><ESC>

" hard-reset currently open file, to reset things like :set wrap to defaults
"nnoremap ,r :e __nonexistantfile__ \| e <C-r>=bufname("%")<CR><CR>

" ,rs searchs and replaces globally the word under the cursor
nnoremap <Leader>rs :%s/\<<C-r><C-w>\>//g<Left><Left>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN CONFIG
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"instant markdown previewer
let g:instant_markdown_autostart = 0

""""""""""""
" NERDTree "
""""""""""""
" ,n opens nerdtree if you ever want it
nnoremap ,n :NERDTree<CR>

"toggle NERDTree
silent! nmap <C-p> :NERDTreeToggle<CR>
let g:NERDTreeMapActivateNode="o"
let NERDTreeShowHidden=1

""""""""""""""""""""""""""
" VIM-LATEX-LIVE-PREVIEW "
""""""""""""""""""""""""""
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'

"""""""""""""""""
" VIM-CLOSETAGS "
"""""""""""""""""
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js"

"""""""""""""""
" DELIMITMATE "
"""""""""""""""
" let delimitMate_expand_cr = 1

"""""""""""""
" HDEVTOOLS "
"""""""""""""
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F5> :HdevtoolsClear<CR>
au FileType haskell nnoremap <buffer> <silent> <F6> :HdevtoolsInfo<CR>

""""""""""""
" DEOPLETE "
""""""""""""
" let g:deoplete#enable_at_startup = 1

"""""""""""""""
" NEOCOMPLETE "
"""""""""""""""
" Use neocomplete.
" let g:neocomplete#enable_at_startup = 1

" " Use smartcase.
" let g:neocomplete#enable_smart_case = 1

" call neocomplete#util#set_default_dictionary(
  " \ 'g:neocomplete#sources#omni#input_patterns',
  " \ 'elm',
  " \ '\.')

"Enable Omni Completion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"""""""""""
" GHC-MOD "
"""""""""""
" Reload
map <silent> tu :call GHC_BrowseAll()<CR>
" Type Lookup
map <silent> tw :call GHC_ShowType(1)<CR>

""""""""""""""""""""""""""""""""""""
" VIM-POLYGLOT SYNTAX HIGHLIGHTING "
""""""""""""""""""""""""""""""""""""
let g:jsx_ext_required = 1
let g:polyglot_disabled = ['elm']

""""""""""""""""""""""""""""""""
" BETTER-JAVASCRIPT-COMPLETION "
""""""""""""""""""""""""""""""""
let g:vimjs#casesensistive = 1
" Enabled by default. flip the value to make completion matches case insensitive

let g:vimjs#smartcomplete = 0
" Disabled by default. Enabling this will let vim complete matches at any location
" e.g. typing 'ocument' will suggest 'document' if enabled.

let g:vimjs#chromeapis = 0
" Disabled by default. Toggling this will enable completion for a number of Chrome's JavaScript extension APIs

let g:javascript_plugin_jsdoc = 1
" enables syntax highlighting for JSDOC

"""""""
" ALE "
"""""""
map <Leader>s :ALEToggle<CR>
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_linters = {
  \ 'python': ['pylint'] ,
  \ 'javascript': ['eslint'],
  \ }
" This is eslint using the prettier plugin for eslint...might want to switch to simple eslint
let g:ale_fixers = {
\  'javascript': ['eslint'],
\}
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
" nnoremap <buffer> <silent> <LocalLeader>= :ALEFix<CR>

"""""""""""""""""
" ELM SYNTASTIC "
"""""""""""""""""
let g:elm_syntastic_show_warnings = 1

"""""""""""
" ELM VIM "
"""""""""""
let g:elm_jump_to_error = 0
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
let g:elm_syntastic_show_warnings = 0
let g:elm_browser_command = ""
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
let g:elm_format_fail_silently = 0
let g:elm_setup_keybindings = 1
"
"""""""""""""
" VIM-SLIME "
"""""""""""""
let g:slime_target = "tmux"
let g:slime_paste_file = tempname()

""""""""""
" PYMODE "
""""""""""
let g:pymode_folding = 0
let g:pymode_trim_whitespaces = 1
let g:pymode_lint_on_write = 1
let g:pymode_rope = 0
let g:pymode_options_colorcolumn = 0

"""""""""""""
" ULTISNIPS "
"""""""""""""
" IMPORTANT: Ultisnips files match on these rules:
    " snippet filename         filetype ~
    " ruby.snippets            ruby
    " perl.snippets            perl
    " c.snippets               c
    " c_my.snippets            c
    " c/a                      c
    " c/b.snippets             c
    " all.snippets             all
    " all/a.snippets           all
" The default Ultisnip files in vim-snippets/Ultisnips don't always match that format

" consider moving only definitions of snippets that I want to sniplets
let g:UltiSnipsSnippetDirectories=['UltiSnips', 'sniplets']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:ultisnips_javascript = {
  \ 'keyword-spacing': 'always',
  \ 'semi': 'never',
  \ 'space-before-function-paren': 'always',
  \ }
let g:snips_author = 'Aaron Arntz'
let g:snips_author_email = 'aarntz@gmail.com'
"""""""""""""""""""
" YOU COMPLETE ME "
"""""""""""""""""""
let g:ycm_use_ultisnips_completer = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}
" make YCM compatible with UltiSnips (using supertab)
let g:SuperTabCrMapping                = 0
let g:ycm_key_list_select_completion = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"""""""""
" BOXES "
"""""""""
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


""""""""""
" FIGLET "
""""""""""
vmap ,fs !figlet -cf slant <CR>
vmap ,fr !figlet -c <CR>

"""""""""""""""""
" NERDCOMMENTER "
"""""""""""""""""
let g:NERDSpaceDelims = 1
let NERDRemoveExtraSpaces = 1
" Not specific to NERDCOMMENTER but removes the very annoying auto comment of the next line in vim
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"""""""""
" TIDAL "
"""""""""

let g:tidal_default_config = {"socket_name": "default", "target_pane": "0:6.2"}
map <Enter> o<ESC>
" map <s-Enter> O<ESC>

""""""""""""""""""""""""""""""""""""""
" LOCATION LIST AND QUICKFIX WINDOWS "
""""""""""""""""""""""""""""""""""""""
noremap <leader>c :ccl <bar> lcl<CR>

"""""""""""""""""""
" FZF AND RIPGREP "
"""""""""""""""""""
noremap <leader>f :FZF<CR>
noremap <leader>F :Rg<CR>
