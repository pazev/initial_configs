" EDITOR_OPTIONS --------------------------------------------------------- {{{

" # =================== #
" # Main editor options #
" # =================== #
set nocompatible            " Disable vi compatibility
set nobackup                " Do not save backup files
set history=1000            " Save last 1000 commands in history
set encoding=utf-8          " Encoding

" # ================ #
" # Filetype options #
" # ================ #
filetype on                 " Enable filetype detection 
filetype plugin on          " Enable plugins for the detected filetype
filetype indent on          " Load indent for the detected filetype 
syntax on                   " Enable syntax highlighting

" # ================= #
" # Scrolling options #
" # ================= #
set scrolloff=10            " Do not let cursor scroll below or above N number
                            "   of lines when scrolling


" # ================ #
" # Main viz options #
" # ================ #
set number                  " Show line number 
set cursorline              " Show line of the cursor
set showmode                " Show the mode you are on the last line
set showcmd                 " Show partial command you type in the last line
                            "   of the screen
set nowrap                  " No word wrap

colorscheme molokai

" # =============== #
" # Spacing options #
" # =============== #
set expandtab               " Expand tabs to spaces
set shiftwidth=4            " Shift width = 4 spaces
set tabstop=4               " Set tab width to 4 columns


" # ============== #
" # Search options #
" # ============== #
set incsearch               " Incrementally highlight matching characters
set ignorecase              " Ignore case
set smartcase               " Disable ignorecase option if looking for 
                            "   capital letters


" # ==================== #
" # Autocomplete options #
" # ==================== #
set wildmenu                " Enable autocomplete
set wildmode=list:longest   " List longest mode
" Ignore the filetypes below
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" # =========== #
" # Status line #
" # =========== #
set statusline=             " Clear status line when VIM is reloaded 


" "}}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" Enable folding in nvim
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker     " Fold with {{{}}} makers
augroup END

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufRead,BufNewFile *.py
    \ match BadWhitespace /\s\+$/
" }}}

" KEY MAPPING ------------------------------------------------------------ {{{


" # ================== #
" # Insert mode remaps #
" # ================== #
let mapleader = "\\"

" Disable arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" Remap jj to ESC
inoremap jj <esc>
tnoremap jjj <c-\><c-n>

" # ================== #
" # Normal mode remaps #
" # ================== #
" Remap space to :; if in command mode, double spaces makes an enter
nnoremap <space> :
cnoremap <space><space> <CR>

" Quick commands to change windows
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Create lines without entering insert mode
nnoremap o o<esc>
nnoremap O O<esc>

" Disable search highlighting
nnoremap <leader>\ :set hlsearch!<CR>

" Open left panel
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>
nnoremap <leader>c <c-w>q
" }}}


