set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"
"here write plugins which we need
Plugin 'tpope/vim-obsession'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/goyo.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'mhinz/vim-startify'
Plugin 'vim-airline/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'vimwiki/vimwiki'
"
call vundle#end()            " required
filetype plugin indent on    " required

"vim-plug section
call plug#begin('~/.vim/plugged')
Plug 'vimwiki/vimwiki'
filetype plugin on
"Uncomment to override defaults:
let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
" oman start
" vimwiki - Personal Wiki for Vim
" https://github.com/vimwiki/vimwiki
set nocompatible
filetype plugin on
syntax on
" vimwiki with markdown support
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
" helppage -> :h vimwiki-syntax 

" vim-instant-markdown - Instant Markdown previews from Vim
" https://github.com/suan/vim-instant-markdown
let g:instant_markdown_autostart = 0	" disable autostart
map <leader>md :InstantMarkdownPreview<CR>

" tried export viwiki_failed"
"let g:vimwiki_list = [{'path': '/home/vku/02mtar/vimw_tr_str/', 'path_html': '/home/vku/02mtar/public_html/'}]
"let g:vimwiki_list = [{'path': '/home/vku/02mtar/vimw_tr_str/', 'auto_export': 1}]
"
"
" oman end
" oman start
filetype off
set runtimepath+=/usr/share/lilypond/2.18.2/vim/
filetype on
syntax on
" oman end
"
call plug#end()
"
set laststatus=2
"colorscheme desertEx
set guifont=Monospace\ 14
filetype on
filetype plugin on
filetype indent on
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
" set expandtab (if need 4 char instead of tab

set timeoutlen=1000 ttimeoutlen=0

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

"--------------------

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"oman
" remove toolbar
set guioptions-=T

set wildmenu
set wcm=<Tab>
let g:user_emmet_leader_key=','
" oman end

menu Encoding.koi8-r :e ++enc=koi8-r<CR>
menu Encoding.cp1251 :e ++enc=cp1251<CR>
menu Encoding.cp866 :e ++enc=cp866<CR>
menu Encoding.ucs-2le :e ++enc=ucs-2le<CR>
menu Encoding.utf-8 :e ++enc=utf-8<CR>
map <F2> :emenu Encoding.<Tab>

"execute pathogen#infect()
"syntax on
"filetype plugin indent on

"set printoptions+=header:0

"set pdev=HP_LaserJet_1022
set pdev=HP-LaserJet-Professional-M1132-MFP
"set printencoding=koi8-r
set penc=koi8-r

nmap <silent> <C-E> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
nmap <silent> <C-N> :NERDTreeTabsToggle<CR>

"nmap <silent> <C-g> :NERDTreeTabsToggle<CR><bar>:set wrap nolinebreak<CR><bar>:Goyo<CR><bar>:set background=light<CR>

let g:indentLine_char = '|'

autocmd VimEnter *
		\  if !argc()
		\ |  Startify
		\ |  NERDTree
		\ |  wincmd w
		\ | endif
