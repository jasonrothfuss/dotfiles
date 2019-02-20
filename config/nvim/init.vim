set nocompatible
set t_Co=256

let vim_minimal=$VIM_MINIMAL

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'flazz/vim-colorschemes'
	Plugin 'b1narykid/llvm.vim'
	Plugin 'keith/swift.vim'
	Plugin 'rust-lang/rust.vim'
	Plugin 'zah/nim.vim'
	Plugin 'majutsushi/tagbar'
	Plugin 'fsharp/vim-fsharp'
	Plugin 'vim-scripts/guicolorscheme.vim'

call vundle#end()

filetype plugin indent on

function! ConfigureVim()
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" Colorscheme
	"colorscheme xoria256
	"colorscheme ashen
	"colorscheme astronaut
	"colorscheme atom
	"colorscheme base16-atelierlakeside
	"colorscheme beauty256
	"colorscheme Dev_C++
	"colorscheme Dev_Delight
	"colorscheme colorsbox-stbright
	"colorscheme colorsbox-material

	" Fav Light
	"colorscheme automation
	" Fav Dark
	"colorscheme colorsbox-material
	colorscheme 1989
	"GuiColorScheme chlordane

	"set guifont=Ubuntu\ Mono\ derivative\ Powerline:h14
	set guifont=Fantasque\ Sans\ Mono\ Regular:h13
	if has("gui_macvim")
		set macligatures
	endif

	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" NERDTree Config
	"map = :NERDTreeToggle<CR>
	map <F2> :NERDTreeFind<CR>

	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" Cycle through buffers
	map <C-n> :bnext<CR>
	map <C-p> :bprevious<CR>

	" Occur style search
 	nmap g/ :vimgrep /<C-R>//j %<CR>\|:cw<CR>

	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" Highlight whitespace errors
	:highlight TrailingWhitespace ctermbg=red guibg=red
	:match TrailingWhitespace /\s\+$/
	:autocmd ColorScheme * highlight TrailingWhitespace ctermbg=red guibg=red

	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" Spacemacs Style
	set shell=/bin/bash
	nmap <space>w <C-w>
	nmap <space>w/ :vsp<CR>
	nmap <space>w- :sp<CR>
	nmap <space>wd <C-w>q
	nmap <space><space> :
	nmap <space>fe :e<space>
	nmap <space>ff :NERDTree<CR>
	nmap <space>fs :w!<CR>
	nmap <space>ad :NERDTreeToggle<CR>
	nmap <space>b<space> :b<space>
	nmap <space>bb :MBEFocus<CR>
	nmap <space>bd :bd<CR>
	nmap <space>bp :bprevious<CR>
	nmap <space>bn :bnext<CR>
	nmap <space>cc :set makeprg=
	nmap <space>cr :make<CR>
	nmap <space>qq :qa<CR>
	nmap <space>sc :noh<CR>


	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" Airline Setup
	"let g:airline_theme='papercolor'
	"let g:airline_theme='luna'
	"let g:airline_theme='vice'
	"let g:airline_theme='light'
	"let g:airline_theme='powerlineish'
	"let g:airline_theme='raven'
	"let g:airline_theme='ravenpower'
	let g:airline_theme='minimalist'
	"let g:airline_theme='silver'

	syntax on
	set number
	set modeline
	set modelines=5

endfunction

if vim_minimal != '1'
	call ConfigureVim()
endif

set laststatus=2

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
"% Set the following lines in your ~/.vimrc or the systemwide /etc/vimrc:
"% filetype plugin indent on
"% set grepprg=grep\ -nH\ $*
"% let g:tex_flavor = "latex"
"%
"% Also, this installs to /usr/share/vim/vimfiles, which may not be in
"% your runtime path (RTP). Be sure to add it too, e.g:
"% set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

