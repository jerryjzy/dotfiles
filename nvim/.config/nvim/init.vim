" ------------------ "
" JERRY JI           "
" jerryjzy@gmail.com "
" ------------------ "

" VimPlug ----------------------------------------------------{{{
call plug#begin('~/.vim/plugged')

" Syntax
Plug 'godlygeek/tabular'
" Plug 'Yggdroot/indentLine'

Plug 'neomake/neomake'
Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'

" Git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-github-dashboard'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Visual Plugins
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'janko-m/vim-test'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'

" Utility Plugins
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'Raimondi/delimitMate'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

" Completion Plugins
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-clang'
Plug 'tweekmonster/deoplete-clang2'

" Syntax Plugins
Plug 'zchee/deoplete-jedi'
Plug 'Cognoscan/vim-vhdl'
Plug 'Shirk/vim-gas'
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'
" Plug 'arakashic/chromatica.nvim'

" Application Plugins
" Plug 'ledger/vim-ledger'
" Plug 'blindFS/vim-taskwarrior'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc-after'
Plug 'lervag/vimtex'


" Add plugins to &runtimepath
call plug#end()
" }}}


" Colorscheme setup ----------------------------------------------{{{
set background=dark
let g:gruvbox_italic=1
colorscheme gruvbox
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" }}}

" background transparancy
" highlight Normal ctermbg=none
" highlight NonText ctermbg=none

autocmd VimEnter * hi Normal ctermbg=none

" System setup --------------------------------------------------{{{

set noshowmode
set showcmd
set showmatch
set showmode
set number
set relativenumber
set tabstop=4
set expandtab
set shiftwidth=4
set modeline
set modelines=5
set splitbelow
set splitright
set mouse=a
filetype on
set cursorline
set clipboard+=unnamedplus
set synmaxcol=128
set encoding=utf-8
set nowrap
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase
" neovim paste issue
set pastetoggle=<F6>
set nopaste


" Keep undo tree after close
set undofile
set undodir="~/.vim_undo_files"

set sh=/bin/zsh



" Remember cursor position between vim sessions
autocmd BufReadPost *
              \ if line("'\"") > 0 && line ("'\"") <= line("$") |
              \   exe "normal! g'\"" |
              \ endif
              " center buffer around cursor when opening files
autocmd BufRead * normal zz



" Keep cursor from being too close to edge
if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif

au BufNewFile * set noeol

" No show command
autocmd VimEnter * set nosc

" Highlight 80 character limit
set colorcolumn=+1
highlight colorcolumn ctermbg=236

" automatic setup for assembly
au BufRead,BufNewFile *.asm set ft=asm8051
au BufRead,BufNewFile *.s set ft=gas

" let g:python_host_prog = '/usr/bin/python'


"}}}



" Keybindings etc. -----------------------------------------------{{{

" Leaders
let mapleader=','
let maplocalleader=',,'

" tnoremap jj <C-\><C-n>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Folding shortcuts
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Write with elevation
" command W w !sudo tee % > /dev/null

" Force Quit with :Q
command -nargs=0 Quit :qa!

" Remove trailing whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" No ex mode
nnoremap Q <nop>

vnoremap <C-c> "*y

" Quick ESC
" imap jj <ESC>

" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk

" format the entire file
nmap <leader>fef ggVG=

" Open new buffers
nmap <leader>s<left>   :leftabove  vnew<cr>
nmap <leader>s<right>  :rightbelow vnew<cr>
nmap <leader>s<up>     :leftabove  new<cr>
nmap <leader>s<down>   :rightbelow new<cr>

" Tab between buffers
noremap <tab> <c-w><c-w>

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" Resize buffers
if bufwinnr(1)
  nmap Ä <C-W><<C-W><
  nmap Ö <C-W>><C-W>>
  nmap ö <C-W>-<C-W>-
  nmap ä <C-W>+<C-W>+
endif
"}}}



" Plugin Settings --------------------------------------------------{{{

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']

" CtrlP
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>f :CtrlPMRUFiles<CR>

let g:ctrlp_working_path_mode=2
let g:ctrlp_by_filename=1
let g:ctrlp_max_files=600
let g:ctrlp_max_depth=5

" vimtex
let g:vimtex_view_general_viewer="zathura"
let g:vimtex_latexmk_build_dir="./.build/"

" Ultisnips
let g:UltiSnipsExpandTrigger="<s-tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" deoplete.nvim
let g:deoplete#enable_at_startup=1
let g:deoplete#sources#clang#libclang_path="/usr/lib/libclang.so"
let g:deoplete#sources#clang#clang_header="/usr/lib/clang"
inoremap <expr><tab> pumvisible() ? "\<C-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<C-p>" : "\<tab>"

" Airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
" let g:airline_left_sep=' '
" let g:airline_right_sep=' '
let g:airline_theme='gruvbox'

" vim-commentary
autocmd FileType asm setlocal commentstring=;\ %s
autocmd FileType vhdl setlocal commentstring=--\ %s
autocmd FileType matlab setlocal commentstring=%\ %s

" vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_math = 1
" }}}

" Chromatica.nvim
" let g:chromatica#libclang_path="/usr/lib/libclang.so"
" let g:chromatica#enable_at_startup=1

" Vim Indent Guide
let g:indentLine_char = '│'

" Vim Pandoc
let g:pandoc#after#modules#enabled = ["ultisnips"]



" " TagList
" nmap <leader>m :TlistToggle<CR>
" let Tlist_GainFocus_On_ToggleOpen = 1
" let Tlist_Use_Right_Window = 1
" let Tlist_Exit_OnlyWindow = 1
