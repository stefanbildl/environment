set t_Co=256
imap jj <Esc>
set wildmenu
set showcmd
set autoindent
set visualbell
set shortmess=I
let g:tex_flavor = "latex" 
set mouse=a
set nocompatible
set autowrite
set hidden
" Tab Settings
set tabstop=4 shiftwidth=4 expandtab

set backspace=indent,eol,start

" Leader
let mapleader=","
nmap <leader>n :NERDTreeToggle<CR>

" Other Keymappings
nnoremap <space> za

" Editor layout
syn on
set nu
set ruler
"set number
set guifont=Meslo\ LG\ L\ DZ\ for\ Powerline:h11
set wrap

" Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/vimproc.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'flazz/vim-colorschemes'
Plugin 'powerline/fonts'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'Buffergator'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vimwiki/vimwiki'
Plugin 'ervandew/supertab'
Plugin 'digitaltoad/vim-pug'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'moll/vim-node'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'

call vundle#end()            " required
filetype plugin indent on    " required

let g:ycm_confirm_extra_conf = 0

colorscheme 256-grayvim

" Airline Settings
"let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#syntastic#enabled = 1

let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" recognise ts files as typescript (NOT XML)
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
