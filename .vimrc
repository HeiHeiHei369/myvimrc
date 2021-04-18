let mapleader=" "
set nocompatible

filetype on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'preservim/nerdtree'
	Plugin 'vim-airline/vim-airline'
	Plugin 'plasticboy/vim-markdown'
	Plugin 'iamcco/markdown-preview.vim'
	Plugin 'connorholyday/vim-snazzy'	
	Plugin 'ycm-core/YouCompleteMe'
	Plugin 'Xuyuanp/nerdtree-git-plugin'
set mouse=a
call vundle#end()
filetype plugin on
let g:mkdp_auto_start=0
colorscheme snazzy

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
set encoding=utf-8
syntax on
autocmd BufWritePost $MYVIMRC source $MYVIMRC

set showmode
set showcmd
map <LEADER>s :set spell<CR>
map <LEADER>d :set nospell<CR> 
set autoindent
set cursorline
set cindent
set shiftwidth=4
set tabstop=4
set softtabstop=4

set number
set ruler
set wrap
set wildmenu

set hlsearch
set incsearch
set showmatch
noremap <LEADER><CR> :nohlsearch<CR>

map J 5j
map K 5k

noremap n nzz
noremap N Nzz
" 分屏，改变分屏size，tab
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize -5<CR>
map <right> :vertical resize +5<CR>
map tu :tabe<CR>
" 去上一个tab
map ti :-tabnext<CR>
" 去下一个tab
map tn :+tabnext<CR>

map tt :NERDTreeToggle<CR>

" 重新打开文件，光标放到关闭前的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set tags=/Users/mingchao/OldLinuxSrc/linux-0.01/tags
set tags=/Users/mingchao/OldLinuxSrc/linux-0.11/tags
set tags=/Users/mingchao/learn/linux/linux0.11/tags


