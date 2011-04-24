set nocompatible
filetype off
call pathogen#runtime_append_all_bundles()

set rtp+=~/.vim/vundle.git/
call vundle#rc()

" My Bundles
" Original Github Repo's
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
" Non Github Repo
Bundle 'git://git.wincent.com/command-t.git'

filetype on
filetype plugin on
filetype indent on

" Hides bufers when opening new files. Means you don't need to save before
" opening the new one.
set hidden
set wildmode=list:longest

" Autoindent
set autoindent
set copyindent

"Standard 4 tab
set shiftwidth=2
set softtabstop=2
set tabstop=8
set expandtab
set smarttab

set number "Show line numbers at the beginning of a line


set autochdir " Automatically cd into the directory containing the current file

set showmatch "Show matching brackets

set hlsearch " Hightlight search terms
set incsearch " Show search matches as you type

set visualbell " Don't Beep
set noerrorbells " Don't Beep

set nobackup " Don't auto backup
set noswapfile " Don't use swapfiles

" Only do this if VIM supports autocmd
if has('autocmd')
    autocmd filetype python set shiftwidth=4
endif

colorscheme slate
set background=dark
syntax enable

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

if has('autocmd')
    autocmd filetype html, xml set listchars-=tab:>.
endif

set pastetoggle=<F2> " If F2 is pressed autoindent etc is ignored

if has('autocmd')
  autocmd FileType python setlocal omnifunc=pysmell#Complete
endif

set tags+=~/.vim/tags/cpp
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>

let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " Autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " Autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu/preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" Custom Mappings
"command SyncBuild execute "!./syncBuild.sh"
"map <F4> :SyncBuild<CR>

" NERDTree
let NERDTreeIgnore=['\.pyc$', '\.o$']
let NERDTreeShowHidden=1
map <Leader>n :NERDTreeToggle<CR>
