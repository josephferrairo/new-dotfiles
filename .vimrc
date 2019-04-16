set nocompatible              " be iMproved, required
filetype off                  " required


" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/tpope/vim-rails.git'
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'
Plug 'https://github.com/adelarsq/vim-matchit.git'

Plug 'https://github.com/vim-airline/vim-airline.git'
set laststatus=2 " Always Display vim-airline

Plug 'https://github.com/kien/ctrlp.vim.git'

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

Plug 'https://github.com/rking/ag.vim.git'
Plug 'https://github.com/mhinz/vim-signify.git'
Plug 'https://github.com/ntpeters/vim-better-whitespace.git'
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
Plug 'https://github.com/tpope/vim-commentary.git'
map <C-C> :Commentary<CR>


Plug 'https://github.com/scrooloose/nerdtree.git'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

Plug 'https://github.com/vim-ruby/vim-ruby.git'
Plug 'https://github.com/tpope/vim-haml.git'
Plug 'https://github.com/stephpy/vim-yaml.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'terryma/vim-multiple-cursors'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/Raimondi/delimitMate.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/isRuslan/vim-es6.git'
Plug 'https://github.com/janko-m/vim-test.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/sheerun/vim-polyglot.git'
Plug 'alvan/vim-closetag'
Plug 'mtdl9/vim-log-highlighting'
Plug 'https://github.com/ap/vim-css-color.git'

" Autocomplete
Plug 'maksimr/vim-jsbeautify'
map <c-f> :call JsBeautify()<cr>

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1


Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
let g:tern#command = ["tern"]
let g:deoplete#sources#ternjs#case_insensitive = 0
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#ternjs#filetypes = [
      \ 'jsx',
      \ 'javascript.jsx',
      \ 'vue',
      \ 'html'
      \ ]

Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ }

" vim-jsx stuff
Plug 'https://github.com/mxw/vim-jsx.git'
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0


" JS Linting
Plug 'neomake/neomake'

" Plug 'https://github.com/w0rp/ale.git'
" let g:airline#extensions#ale#enabled = 1
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:sql_type_default = "sqlserver"
"Current syntax is gruvbox
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'fgsch/vim-varnish'
" All of your Plugins must be added before the following line
call plug#end()
" enable neomake
call neomake#configure#automake('nrwi', 500)

filetype plugin indent on    " required
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
set background=dark " Setting dark mode
set t_Co=256
" syntax on
:syntax on
:syntax enable
" numbers on
:set number
:set relativenumber
" highlight search results
:set hlsearch
" ignore case when searching
:set ignorecase
" underline current line
:set cursorline
:hi cursorlinenr gui=underline cterm=underline
" Can Copy and Paste from system clipboard
set clipboard=unnamed
" Comment with ctl + c and Uncomment with ctl + T
"map <C-C> :s:^:#<CR>
"map <C-T> :s:^#<CR>
" Allow navigating in and out of :terminal
:tnoremap <Esc> <C-\><C-n>
" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on
" default syntax is ruby
" To ignore plugin indent changes, instead use:
"NeoVim true color on
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
highlight Comment gui=italic
highlight Comment cterm=italic
