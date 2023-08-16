" Show line number
:set nu
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set expandtab

:set path=$PWD/**

:syntax enable
:set hidden

" Always display the status line
:set laststatus=2

" Customized mapping for better ctags + cscope navigation
" Open a new window, move to it a tab, and jump to the first tag found
:nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T

" Open a new tab and split (cursor position should remain the same), then
" use tjump on cursor position
:nnoremap <silent><Leader>g<C-]> :tab split<CR> g<C-]>

:nnoremap <silent><Leader><C-t> <C-t><C-w>c:tabp<CR>

" Syntax on for file extensions
:syntax on

" No compatible mode so we have all features of vim. Required for Vundle
:set nocp

" Set filetype recognition off. Required for Vundle
:filetype off

" Highlight search results
:set hlsearch

" Enable incremental search
:set incsearch

" Map next buffer and prev buffer to <Leader>PageUp and <Leader>PageDown
map <ESC>[1;5C :bn<CR>
map <ESC>[1;5D :bp<CR>
map <Leader><C-w> :Bclose<CR>

" Open quicklist and close quicklist
nnoremap <Leader><C-o> :copen<CR>
nnoremap <Leader><C-x> :cclose<CR>

" Set colors?
:set t_Co=256

" Smart case to do case insensitive/sensitive search
" :set smartcase

" Ignore case
:set ignorecase

" Cursor highlighting
:hi CursorLine   cterm=NONE ctermbg=22 ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=22 ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
:nnoremap <Leader>m :set syntax=messages<CR>
:hi Search ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black

" Relative line numbers
:set relativenumber

" =========================
" Vundle
" =========================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'vim-scripts/AnsiEsc.vim'
Plugin 'rbgrouleff/bclose.vim'
Plugin 'godlygeek/csapprox'
Plugin 'vim-airline/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'kshenoy/vim-signature'
Plugin 'scrooloose/nerdtree'
Plugin 'ronakg/quickr-cscope.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'vim-scripts/a.vim'
"Plugin 'ycm-core/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-easymotion.vim'
Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable'}

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" =================================


" =========================
" Vim Plug, disabled in favor of Vundle
" =========================
" call plug#begin('~/.vim/downloadedPlugins')
" Plug 'vim-scripts/AnsiEsc.vim'
" Plug 'https://github.com/rbgrouleff/bclose.vim'
" Plug 'godlygeek/csapprox'
" Plug 'vim-airline/vim-airline'
" Plug 'bling/vim-bufferline'
" Plug 'kshenoy/vim-signature'
" Plug 'scrooloose/nerdtree'
" Plug 'ronakg/quickr-cscope.vim'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'severin-lemaignan/vim-minimap'
" Plug 'vim-scripts/a.vim'
" Plug 'Valloric/YouCompleteMe'
" Plug 'easymotion/vim-easymotion'
" Plug 'haya14busa/incsearch.vim'
" Plug 'haya14busa/incsearch-easymotion.vim'
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

" Syntax highlighting for logcat logs
"Plug 'gburca/vim-logcat'
"call plug#end()


" =================================
" NERD Tree stuff
" =================================
" Enable side panel for file browsing
map <C-n> :NERDTreeToggle<CR>

" =================================
" Airline stuff
" =================================
" Enable buffer list
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" =================================
" ctrlp stuff
" =================================
" We want to file all files in our project directories, so this allows unlimited files.
let g:ctrlp_max_files=0

" How far we can recurse to look for files
let g:ctrlp_max_depth=100

" By default, search using regex (finds more stuff)
let g:ctrlp_regexp = 1

" Always run CtrlP on current working directory when <c-p> is used
let g:ctrlp_cmd = 'CtrlP ./'

" =================================
" colorscheme stuff
" =================================
" Setting colorscheme to 'lucius'
:colorscheme lucius

" 'lucius' has some extra templates that can be used.
LuciusDark

" =================================
" quickr_cscope stuff
" =================================
" Define custom keymappings
let g:quickr_cscope_keymaps = 0

" Allow multiple matches of globals to show in quickfix list
let g:quickr_cscope_use_qf_g = 1

" =================================
" incsearch stuff
" =================================
" Mappings to highlight all
map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)
map zg/ <Plug>(incsearch-easymotion-stay)

" =================================
" YouCompleteMe stuff
" =================================
" Because the default python used is 2.7, we need to force python3
let g:ycm_server_python_interpreter = '/usr/bin/python3'

" Custom mappings
nmap <Leader><C-\>s <plug>(quickr_cscope_symbols)
nmap <Leader><C-\>g <plug>(quickr_cscope_globals)
nmap <Leader><C-\>c <plug>(quickr_cscope_callers)
nmap <Leader><C-\>t <plug>(quickr_cscope_files)
nmap <Leader><C-\>e <plug>(quickr_cscope_includes)
nmap <Leader><C-\>f <plug>(quickr_cscope_text)
nmap <Leader><C-\>i <plug>(quickr_cscope_egrep)
nmap <Leader><C-\>d <plug>(quickr_cscope_functions)

:set cscopequickfix=s-,c-,d-,i-,t-,e-

" Cscope stuffs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSCOPE settings for vim           
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" This file contains some boilerplate settings for vim's cscope interface,
" plus some keyboard mappings that I've found useful.
"
" USAGE: 
" -- vim 6:     Stick this file in your ~/.vim/plugin directory (or in a
"               'plugin' directory in some other directory that is in your
"               'runtimepath'.
"
" -- vim 5:     Stick this file somewhere and 'source cscope.vim' it from
"               your ~/.vimrc file (or cut and paste it into your .vimrc).
"
" NOTE: 
" These key maps use multiple keystrokes (2 or 3 keys).  If you find that vim
" keeps timing you out before you can complete them, try changing your timeout
" settings, as explained below.
"
" Happy cscoping,
"
" Jason Duell       jduell@alumni.princeton.edu     2002/3/7
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" This tests to see if vim was configured with the '--enable-cscope' option
" when it was compiled.  If it wasn't, time to recompile vim... 
if has("cscope")

    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out  
    " else add the database pointed to by environment variable 
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
    set cscopeverbose  


    """"""""""""" My cscope/vim key mappings
    "
    " The following maps all invoke one of the following cscope search types:
    "
    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
    "
    " Below are three sets of the maps: one set that just jumps to your
    " search result, one that splits the existing vim window horizontally and
    " diplays your search result in the new window, and one that does the same
    " thing, but does a vertical split instead (vim 6 only).
    "
    " I've used CTRL-\ and CTRL-@ as the starting keys for these maps, as it's
    " unlikely that you need their default mappings (CTRL-\'s default use is
    " as part of CTRL-\ CTRL-N typemap, which basically just does the same
    " thing as hitting 'escape': CTRL-@ doesn't seem to have any default use).
    " If you don't like using 'CTRL-@' or CTRL-\, , you can change some or all
    " of these maps to use other keys.  One likely candidate is 'CTRL-_'
    " (which also maps to CTRL-/, which is easier to type).  By default it is
    " used to switch between Hebrew and English keyboard mode.
    "
    " All of the maps involving the <cfile> macro use '^<cfile>$': this is so
    " that searches over '#include <time.h>" return only references to
    " 'time.h', and not 'sys/time.h', etc. (by default cscope will return all
    " files that contain 'time.h' as part of their name).


    " To do the first type of search, hit 'CTRL-\', followed by one of the
    " cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
    " search will be displayed in the current window.  You can use CTRL-T to
    " go back to where you were before the search.  
    "

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

    " Setup the command and allow user to fill in the symbol to search for.

    nmap <C-\><C-s> :cs find s 
    nmap <C-\><C-g> :cs find g 
    nmap <C-\><C-c> :cs find c 
    nmap <C-\><C-t> :cs find t 
    nmap <C-\><C-e> :cs find e 
    nmap <C-\><C-f> :cs find f 
    nmap <C-\><C-i> :cs find i 
    nmap <C-\><C-d> :cs find d 

    " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
    " makes the vim window split horizontally, with search result displayed in
    " the new window.
    "
    " (Note: earlier versions of vim may not have the :scs command, but it
    " can be simulated roughly via:
    "    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>	

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>	


    " Hitting CTRL-space *twice* before the search type does a vertical 
    " split instead of a horizontal one (vim 6 and up only)
    "
    " (Note: you may wish to put a 'set splitright' in your .vimrc
    " if you prefer the new window on the right instead of the left

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>


    """"""""""""" key map timeouts
    "
    " By default Vim will only wait 1 second for each keystroke in a mapping.
    " You may find that too short with the above typemaps.  If so, you should
    " either turn off mapping timeouts via 'notimeout'.
    "
    "set notimeout 
    "
    " Or, you can keep timeouts, by uncommenting the timeoutlen line below,
    " with your own personal favorite value (in milliseconds):
    "
    "set timeoutlen=4000
    "
    " Either way, since mapping timeout settings by default also set the
    " timeouts for multicharacter 'keys codes' (like <F1>), you should also
    " set ttimeout and ttimeoutlen: otherwise, you will experience strange
    " delays as vim waits for a keystroke after you hit ESC (it will be
    " waiting to see if the ESC is actually part of a key code like <F1>).
    "
    "set ttimeout 
    "
    " personally, I find a tenth of a second to work well for key code
    " timeouts. If you experience problems and have a slow terminal or network
    " connection, set it higher.  If you don't set ttimeoutlen, the value for
    " timeoutlent (default: 1000 = 1 second, which is sluggish) is used.
    "
    "set ttimeoutlen=100

endif
