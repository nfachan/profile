set autoread
set backspace=indent,eol,start
set hidden
set history=1000
set ignorecase
set incsearch
set laststatus=2
set noequalalways
set nojoinspaces
set nowrap
set number
set ruler
set smartcase
set spelllang=en_us
set termguicolors
set wildmenu
set wildmode=longest:full,full

"colorscheme desert
colorscheme darkblue

" Plug 'rust-lang/rust.vim'
let g:rust_bang_comment_leader = 1
let g:rust_fold = 1
"let g:rustfmt_autosave = 1

" Plug 'preservim/nerdtree'
nnoremap <leader>nt :NERDTreeToggleVCS<CR>
nnoremap <leader>n. :NERDTreeFind<CR>
nnoremap <leader>nf :NERDTreeFocus<CR>

" Plug 'natebosch/vim-lsc'
let g:lsc_server_commands = {
    \ 'rust': {
    \     'command': 'rust-analyzer',
    \     'message_hooks': {
    \         'initialize': {
    \             'initializationOptions': {
    \                 'check': {
    \                     'targets': [ 
    \                         'x86_64-unknown-linux-gnu',
    \                         'x86_64-unknown-linux-gnu' 
    \                     ]
    \                 },
    \                 'cargo': {
    \                     'cfgs': { 
    \                         'target_arch': "wasm32",
    \                     }
    \                 }
    \             }
    \         }
    \     }
    \ }
    \}
let g:lsc_auto_map = v:true

let g:startify_change_to_dir = 0

" Plug 'preservim/tagbar'
nnoremap <leader>tt :TagbarOpen fj<CR>
nnoremap <leader>tc :TagbarClose<CR>

let g:lightline = {
    \ 'colorscheme': 'PaperColor',
    \ 'active': {
    \     'colorscheme': 'wombat',
    \     'left': [ [ 'mode', 'paste' ],
    \               [ 'readonly', 'relativepath', 'fugitive', 'modified' ] ],
    \     'right': [ [ 'lineinfo' ],
    \                [ 'percent' ],
    \                [ 'fileformat', 'fileencoding', 'filetype' ] ] },
    \ 'inactive': {
    \     'left': [ [ 'readonly', 'relativepath', 'fugitive', 'modified' ] ],
    \     'right': [ [ 'lineinfo' ],
    \                [ 'percent' ],
    \                [ 'fileformat', 'fileencoding', 'filetype' ] ] },
    \ 'component_function': {
    \   'fugitive': 'FugitiveHead' } }

call plug#begin()
Plug 'junegunn/vim-plug'
Plug 'rust-lang/rust.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'wincent/ferret'
Plug 'itchyny/lightline.vim'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
"Plug 'liuchengxu/vista.vim'
Plug 'preservim/tagbar'
Plug 'tpope/vim-fugitive'
"Plug 'dense-analysis/ale'
Plug 'natebosch/vim-lsc'
Plug 'tpope/vim-dispatch'
call plug#end()
