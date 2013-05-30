call pathogen#infect()

set dictionary+=/usr/share/dict/words
set swapfile
set dir=~/.vimTemp

" Indentation
filetype indent on
filetype plugin on
syntax enable
set autoindent
set tabstop=3
set softtabstop=3
set expandtab
set shiftwidth=3

" Buffer & window behaviour
set hidden
set scrolloff=6

" Appearance
set mouse=a
set number
set cursorline

" Search, completion
set hlsearch
set showmatch
set incsearch
set completeopt=menu,menuone,longest,preview

" Wild menu
set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-Z>

"========================================
" CUSTOM KEY MAPPINGS
"======================================== 

" Resize splits if switching with ctrl
nnoremap <C-w><C-k> <C-w><C-k><C-w><C-_>
nnoremap <C-w><C-j> <C-w><C-j><C-w><C-_>
nnoremap <C-w><C-h> <C-w><C-h><C-w>120\|
nnoremap <C-w><C-l> <C-w><C-l><C-w>120\|

" ctrl-R in visual mode = replace selected globally
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" ctrl-E in visual mode = replace selected on line
vnoremap <C-e> "hy:s/<C-r>h//g<left><left>

" C++ build stuff
" switch between .c and .h
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map <F5> :make <CR> :cope <CR>

"========================================
" GUI
"========================================

" Nice colors and font
colorscheme wombat
set guifont=Monospace\ 10
set background=dark

" No menu or toolbar
set guioptions-=T
set guioptions-=m
set guioptions-=l

"========================================

"========================================
" CUSTOM KEY MAPPINGS
"======================================== 

" Show trailing whitespace.
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen

" Show illegally long lines (120 char)
au BufRead,BufNewFile * highlight OverLength ctermbg=red ctermfg=white guibg=#592929
au BufRead,BufNewFile * syntax match OverLength /\%121v.\+/

" Show cuddling brackets
au BufRead,BufNewFile *.c,*.cpp,*.h,*.hpp highlight BadBrackets  ctermbg=red ctermfg=white guibg=red
au BufRead,BufNewFile *.c,*.cpp,*.h,*.hpp syntax match BadBrackets /\w.*{\|{.*\w/

" ==================================================
" PLUGINS
" ==================================================

" NERD tree - file browsing
" -------------------------
let NERDTreeIgnore=['\.a', '\.o$', '\~$']

" Ctrl-P - file/buffer finding
" ----------------------------
nnoremap <Tab> :CtrlPBuffer<CR>
nnoremap <S-Tab> :CtrlP<CR>

