filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'qpkorr/vim-bufkill'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'mileszs/ack.vim'
Plugin 'alvan/vim-closetag'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-unimpaired'
"Plugin 'pangloss/vim-javascript'
"Plugin 'mxw/vim-jsx'
Plugin 'Yggdroot/indentLine'
Plugin 'hwartig/vim-seeing-is-believing'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'

call vundle#end()

autocmd Filetype php setlocal shiftwidth=4 tabstop=4
let mapleader = ","
let NERDTreeHijackNetrw = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = 'molokai'
let g:indentLine_color_term = 239

syntax on
set number relativenumber
set expandtab
set shiftwidth=2
set tabstop=2
set incsearch
set hlsearch
set laststatus=2

nmap <leader>q :q<cr>
nmap <leader>c :tabedit $MYVIMRC<cr>
nmap <leader>f :bn<cr>
nmap <leader>d :bp<cr>
nmap <leader>s :BD<cr>
nmap <leader> :nohlsearch<cr>
nmap <C-h> <C-w><C-h>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-l> <C-w><C-l>
nmap <leader>t :NERDTreeToggle<cr>
nmap <leader>n :NERDTreeFind<cr>
nmap <leader>w <leader><leader>w
nmap <leader>b <leader><leader>b
nmap <leader>p :CtrlPBuffer<cr>
nmap <UP> <NOP>
nmap <DOWN> <NOP>
nmap <RIGHT> <NOP>
nmap <LEFT> <NOP>
nmap <leader>g gg=G
nmap <F8> :TagbarToggle<CR>

"line bubling
"nmap <C-k> [e
"nmap <C-j> ]e

imap jj <ESC>
imap <UP> <NOP>
imap <DOWN> <NOP>
imap <RIGHT> <NOP>
imap <LEFT> <NOP>

command! Q q "Bind :Q to :q
command! Qa qa
command! E e
command! W w
command! Wq wq

"save mode 
imap <F2> <ESC>:w<cr>
nmap <F2> :w<cr>

"set toggle paste mode
set pastetoggle=<leader>z

let g:closetag_filenames = '*.html.erb,*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.gitls-files oc --exclude-standard']

"Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"edit untuk react file .jsx
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 1



"Enable seeing-is-believing mappings only for Ruby
augroup seeingIsBelievingSettings
  autocmd!

  autocmd FileType ruby nmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)
  autocmd FileType ruby xmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)

  autocmd FileType ruby nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby imap <buffer> <F4> <Plug>(seeing-is-believing-mark)

  autocmd FileType ruby nmap <buffer> <F5> <Plug>(seeing-is-believing-run)
  autocmd FileType ruby imap <buffer> <F5> <Plug>(seeing-is-believing-run)
augroup END
