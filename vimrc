set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

" Shantanu repos
" Bundle 'tpope/vim-foreplay'
" Bundle 'vim-scripts/VimClojure'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
Bundle 'guns/vim-clojure-static'
Bundle 'dgrnbrg/vim-redl'
Bundle 'jpalardy/vim-slime'
Bundle 'vim-ruby/vim-ruby'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'c9s/bufexplorer'
Bundle 'vim-scripts/buftabs'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-markdown'

" cljx files
autocmd BufNewFile,BufReadPost *.cljx setfiletype clojure

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

set number
set visualbell
" set background=dark
set tabstop=4
set showmatch
set showcmd
set autowrite
set ignorecase
set cursorline
" Force cursorline to be an underline. Otherwise, it's hard to distinguish
" between cursorline and inactive window borders.
hi CursorLine term=underline ctermbg=8 gui=underline guibg=bg

syntax on
filetype plugin indent on

" tabs
set expandtab
set shiftwidth=2
set softtabstop=2

" text selection
if has("gui_macvim")
    let macvim_hig_shift_movement = 1
endif

set title
set cmdheight=2

set visualbell
set noerrorbells     " stupid bells

" Status line related settings
set showcmd
set showmode         " shows what mode you are in.  Useful for block cmds.
set ruler            " This shows the current position at lower left.
set laststatus=2

" 80 columns marker
if exists('+colorcolumn')
  set colorcolumn=80
  highlight ColorColumn ctermbg=7
  highlight ColorColumn ctermfg=0
  highlight ColorColumn guibg=Black
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Settings for NerdTree
" autocmd vimenter * if !argc() | NERDTree | endif
let g:nerdtree_tabs_open_on_console_startup=1
map <C-t> :NERDTreeToggle<CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>

" Settings for ctrlp
let g:ctrlp_working_path_mode = 2
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip  " MacOSX/Linux
" set wildignore+=tmp\*,*.swp,*.zip,*.exe   " Windows
set wildignore+=*/tmp/*,tmp\*,*.so,*.swp,*.zip,*.exe  " MacOSX/Linux/Windows

"let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.exe$\|\.so$\|\.dll$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" Settings for VimClojure
let vimclojure#FuzzyIndent=1
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
let vimclojure#ParenRainbow=1
" let vimclojure#WantNailgun = 1
" let vimclojure#SplitSize = 7

" Whitespace highlight
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Replace hideous dark blue color for comments with lighter blue
highlight Comment ctermfg=Blue
