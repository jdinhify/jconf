call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'sass', 'scss', 'php', 'javascript', 'js', 'javascript.jsx'] }
Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Raimondi/delimitMate'
Plug 'gregsexton/MatchTag'
Plug 'sjl/gundo.vim', { 'on': 'GundoToggle' }
Plug 'vim-airline/vim-airline'
Plug 'haya14busa/vim-asterisk'
Plug 'tpope/vim-fugitive'
Plug 'embear/vim-localvimrc'
Plug 'sheerun/vim-polyglot'
" Comma & Semi-colon
Plug 'lfilho/cosco.vim'
" JS
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
" syntax checking
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

call plug#end()


set background=dark
colorscheme gruvbox
set guifont=Inconsolata-Light:h16
set guicursor=a:ver25


" More natural splitting.
set splitbelow
set splitright
set expandtab ts=2 sw=2 ai
set smarttab
set scrolloff=3
let g:netrw_liststyle=3
set mouse=a
filetype plugin on

" Disable swap files.
set noswapfile

" Write files as they are, don't mess with line endings etc.
set binary

" Disable the completion preview window.
set completeopt-=preview

" Make session files minimal.
set sessionoptions=blank,curdir,folds,help,tabpages,winsize

" show line number
set number

" trailing newline
set eol

" make backspace works like other apps
set backspace=indent,eol,start

" Highlight searches.
set hlsearch

" Highlight the current line.
set cursorline

" Make search case insensitive, but become sensitive if an upper case
" character is used.
set ignorecase
set smartcase

" Enable persistent undo.
set undofile
set undodir=~/.config/nvim/undo
set undolevels=1000
set undoreload=10000

" performance
" Stops macros rendering every step.
set lazyredraw

set wildignorecase
" output, VCS
set wildignore+=*/tmp/*,*.so,*/node_modules,*.swp,*.zip     " MacOSX/Linux
set wildignore+=.git,.hg,.svn
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*,*.gem
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.m4a,*.mp3,*.oga,*.ogg,*.wav,*.webm
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*.swp,.lock,.DS_Store,._*--------------------

" split screen navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" remove trailing white spaces before saving
function! <SID>TrimTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>TrimTrailingWhitespaces()

" Clipboard settings
if empty($SSH_CONNECTION) && has('clipboard')
  set clipboard=unnamed

  if has('nvim') && !has('mac')
    set clipboard=unnamedplus
  elseif has('unnamedplus')
    set clipboard+=unnamedplus
  endif
endif


" ---------------
" Plugins config
" ---------------

" fzf
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>


" emmet
let g:user_emmet_install_global = 0
" let g:user_emmet_expandabbr_key = '<Tab>'
" let g:use_emmet_complete_tag = 1
autocmd FileType html,css,scss,php,javascript.jsx,sass EmmetInstall
" use Tab for emmet
autocmd FileType html,css,scss,php,javascript.jsx,sass imap <expr><tab> emmet#expandAbbrIntelligent("\<tab>")


" gundo
nnoremap <silent> <leader>tu :GundoToggle<CR>


" airline
let g:airline#extensions#tabline#enabled=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#fnamemod = ':t' " show just the filename of buffers in the tab line
let g:airline_detect_modified=1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
set laststatus=2

" asterisk
map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)

" fugitive
nnoremap <silent> <leader>gs :<C-u>Gstatus<CR>
nnoremap <silent> <leader>gw :<C-u>Gwrite<CR>
nnoremap <silent> <leader>gc :<C-u>Gcommit<CR>
nnoremap <silent> <leader>gb :<C-u>Gblame<CR>
nnoremap <silent> <leader>gd :<C-u>Gdiff<CR>
nnoremap <silent> <leader>gj :<C-u>Gpull<CR>
nnoremap <silent> <leader>gk :<C-u>Gpush<CR>
nnoremap <silent> <leader>gf :<C-u>Gfetch<CR>

" jsx
let g:jsx_ext_required = 0

" localvimrc
let g:localvimrc_ask=0
let g:localvimrc_sandbox=0

" indentLine
" let g:indentLine_leadingSpaceChar='·'
let g:indentLine_leadingSpaceEnabled=1

" ALE
let g:ale_linters = {
\ 'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
