call plug#begin("~/.vim/plugged")
  " Plugin
  Plug 'ghifarit53/tokyonight.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'itchyny/lightline.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'zchee/deoplete-jedi'
  Plug 'jiangmiao/auto-pairs'
  Plug 'scrooloose/nerdcommenter'
  Plug 'sbdchd/neoformat'
  Plug 'davidhalter/jedi-vim'
  Plug 'neomake/neomake'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'machakann/vim-highlightedyank'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
call plug#end()

"Config 
if (has("termguicolors"))
 set termguicolors
endif
syntax enable

let g:tokyonight_style = "night" " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_disable_italic_comment = 1
colorscheme tokyonight
let g:lightline = {'colorscheme' : 'tokyonight'}

" line numbers
set number

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" emmet
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

" autocomplete
let g:deoplete#enable_at_startup = 1

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"


