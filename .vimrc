"Preferences"
set nocompatible
set relativenumber
set number
colorscheme solarized
syntax enable
set expandtab
set shiftwidth=4
set softtabstop=4
set showcmd
set cursorline
set encoding=utf8
set wildmenu
set showmatch
set incsearch
set hlsearch
set ignorecase
set nowrap
set laststatus=2
set noswapfile
let g:airline_powerline_fonts = 1
filetype plugin indent on

" General Shortcuts
let mapleader = "\<Space>""
nnoremap <leader><leader> <C-^>
inoremap jk <esc>
nnoremap <leader>wj <C-W>j<C-W>
nnoremap <leader>wk <C-W>k<C-W>
nnoremap <leader>wl <C-W>l
nnoremap <leader>wh <C-W>h
nnoremap <leader>np o<esc>"+p<esc>
nnoremap <leader>wc :q<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>o :only<cr>
nnoremap <leader>wm :only<cr>
nnoremap <leader>ev :vsplit ~/.vimrc<cr>
nnoremap <leader>rv :source ~/.vimrc<cr>
nnoremap <leader>ws :split<cr>
nnoremap <leader>wv :vsplit<cr>
nnoremap <leader>tag :CtrlPTag<cr>
nnoremap <leader>bl :buffers<cr>
nnoremap <leader>bs :buffer! 

" Copy and Paste remapping.
nnoremap <C-v> "+p
vnoremap <C-c> "+y

" Move autocomplete preview window to bottom:
augroup PreviewOnBottom
    autocmd InsertEnter * set splitbelow
    autocmd InsertLeave * set splitbelow!
augroup END

" Disable arrow movement, resize splits instead.
nnoremap <up>    :resize +2<CR>
nnoremap <down>  :resize -2<CR>
nnoremap <lvft>  :vertical resize +2<CR>
nnoremap <right> :vertical resize -2<CR>

" Remove gui junk
:set guioptions-=m
:set guioptions-=T
:set guioptions-=r
:set guioptions-=L

" Neocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
