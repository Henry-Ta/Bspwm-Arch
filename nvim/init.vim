call plug#begin('~/.config/nvim/plugged')
	Plug 'dracula/vim'	 
	
	Plug 'vim-airline/vim-airline'		
	Plug 'vim-airline/vim-airline-themes'

	Plug 'jiangmiao/auto-pairs'

	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'
call plug#end()

"------------- Theme
if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme dracula 

"------------- Vim Airline 
let g:airline_theme='dracula' 
let g:airline#extensions#tabline#enabled = 1

"------------- Nerd Tree
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Shortcut 
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

"-> Ctrl + W: switch between windows
"-> Shift + I: toggle hidden files

" let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ""

"------------- Icon
set guifont=DroidSansMono\ Nerd\ Font\ 11
let g:airline_powerline_fonts = 1

"---------------------------------------------------------------"
":set relativenumber
":set number
:set number relativenumber
