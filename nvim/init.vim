call plug#begin('~/.config/nvim/plugged')

	Plug 'dracula/vim'	 
	
	Plug 'vim-airline/vim-airline'		
	Plug 'vim-airline/vim-airline-themes'

	Plug 'jiangmiao/auto-pairs'

	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

	Plug 'ap/vim-css-color'

	Plug 'yggdroot/indentline'

	Plug 'majutsushi/tagbar'

call plug#end()

"---------------------------------------------------------------- Theme
if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme dracula 


"----------------------------------------------------------------- Vim Airline 
let g:airline_theme='dracula' 
let g:airline#extensions#tabline#enabled = 1


"----------------------------------------------------------------- Nerd Tree
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Shortcut 
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <F9> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

"-> Shift + I: toggle hidden files

" let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
" let g:NERDTreeStatusline = '' 


"-------------------------------------------------------------------- Icon
set guifont=DroidSansMono\ Nerd\ Font\ 11
let g:airline_powerline_fonts = 1


"------------------------------------------------------------------ Indent Line
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']


"------------------------------------------------------------------ Tag Bar
nnoremap <F8> :TagbarToggle<CR>
" let g:tagbar_indent = 3
let g:tagbar_show_data_type = 1
let g:tagbar_show_linenumbers = -1
let g:tagbar_show_tag_linenumbers = 1
let g:tagbar_show_tag_count = 1
let g:tagbar_previewwin_pos = ''
"let g:tagbar_autopreview = 1


"------------------------------------------------------------------ Syntax Highlight
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
"let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

let g:NERDTreeLimitedSyntax = 1

" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule



"-----------------------------------------------------------------------------------------"
set number relativenumber
set splitbelow 
set splitright

"-----------------------------------------------------Switch Windows 
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

"-----------------------------------------------------Switch Buffers
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Mappings to access buffers (don't use '\p' because a
" delay before pressing 'p' would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
nnoremap <Leader>l :buffers<CR>:buffer<Space>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>

"------------------------------------------------------Switch Tabs
"--------> gt : to move to next tab
"--------> gT : to move to previous tab
"--------> 'number'gt : to move to a specific tab in order
