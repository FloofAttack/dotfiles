"colo darkblue
set background=dark
set linespace=2
syntax on
nmap <F12> :q!<CR>
"set nohlsearch
set hlsearch
set nowrap
set rnu
let mapleader = " "
set nu
set incsearch
set smartindent
set scrolloff=6
set expandtab
set tabstop=4
set shiftwidth=4
set t_Co=256
set mouse=a
set splitbelow
nmap oo o<Esc>
nmap OO O<Esc>j
set nocompatible
syntax enable
filetype plugin on
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu
"set nowildmenu
set wildmode=full

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings
"
" From ThePrimeagen Must Have Remaps
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <leader>w :w<CR>
nnoremap <leader>h :noh<CR>
set hidden
" in Insert Mode CTRL-G -> u breaks undo sequence
" inoremap , ,<c-g>u
" Move lines around
"""" Normal Mode: Move a line
nnoremap <c-j> :m .1<CR>
nnoremap <c-k> :m .-2<CR>
"""" Visual Mode: Move multiple lines
vnoremap <c-j> :m '>+1<CR>gv
vnoremap <c-k> :m '<-2<CR>gv

call plug#begin()
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
" Plug 'osyo-manga/vim-over'
" Plug 'haya14busa/incsearch.vim'
" Plug 'preservim/nerdtree'
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 
" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
set showcmd
if has('gui_running')
    " GUI colors
    colorscheme cobalt
else
    " Non-GUI (terminal) colors
    colorscheme gruvbox
endif
