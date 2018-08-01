set nocompatible
set paste
set switchbuf=usetab
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
set backspace=indent,eol,start

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specidy plugins unsing the
" 'user/repository' format

Plugin 'gmarik/vundle'

" File explorer with git support plugin
Plugin 'scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Code Completion
Plugin 'Valloric/YouCompleteMe'

" To get plugins from Vim Scripts, you can refeerence the plugin
" by name as it appears on the site

Plugin 'Buffergator'

" Vim bindings for switching panes in tmux
Plugin 'christoomey/vim-tmux-navigator'

" Vimux Plugin
Plugin 'benmills/vimux'
" Different Theme plugins
 
Plugin 'ajmwagar/vim-deus'
Plugin 'felipesousa/rupza'
Plugin 'aradunovic/perun.vim'
Plugin 'dennougorilla/azuki.vim'

" Status bar
Plugin 'vim-airline/vim-airline'
"Plugin 'edkolev/tmuxline.vim'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='zenburn'
let g:airline_powerline_fonts = 1

" Code Exec bindings 
autocmd FileType python nnoremap <F5> :w <bar> call VimuxZoomRunner() <bar> VimuxRunCommand("clear; python " . bufname("%"))<CR>

" Set Theme
colorscheme azuki

filetype plugin indent on
syntax on

" Remapped keys to aid movememnt between Vim splits

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Mapped keys for tab movements
nnoremap <F4> :sbprevious<CR>
nnoremap <F6> :sbnext<CR>

" Commands that run on Vim startup
autocmd vimenter * NERDTree
set relativenumber
set number

" The following command closes Vim if NERDTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Key mappings

map <F3> :NERDTreeToggle<CR>

