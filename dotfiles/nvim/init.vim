set so=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set expandtab
set smartindent
packloadall
set autochdir
syntax enable
filetype plugin indent on

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'preservim/nerdtree'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
call plug#end()

" Theming
set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
nmap <Leader>p <Plug>(Prettier)

" NERDTree
let g:NERDTreeQuitOnOpen = 1

" Svelte
let g:svelte_preprocessors = ['typescript']

" Remaps
let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-y> :NERDTreeToggle<CR>
nnoremap <C-s> :w<CR>
nnoremap <leader>s :let @/ = ""<CR>
inoremap <C-e> <C-o>$
