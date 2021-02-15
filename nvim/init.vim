call plug#begin('~/.config/nvim/plugged')

    Plug 'morhetz/gruvbox'	
	
    Plug 'vim-airline/vim-airline'		
	Plug 'vim-airline/vim-airline-themes'

	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

	Plug 'yggdroot/indentline'

	Plug 'majutsushi/tagbar'

	Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

call plug#end()

"--------------------------------:-------------------------------- Theme
if (has("termguicolors"))
	set termguicolors
endif

syntax enable
colorscheme gruvbox 


"----------------------------------------------------------------- Vim Airline 
let g:airline_theme='gruvbox' 
let g:airline#extensions#tabline#enabled = 1


"----------------------------------------------------------------- Nerd Tree
" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Shortcut 
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <F7> :NERDTreeToggle<CR>
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
"let g:indentLine_char_list = ['▏','│','|','⎸', '¦', '┆', '┊']
let g:indentLine_char = '▏'
"let g:indentLine_char_list = ['│','┆']


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


"-----------------------------------------------FzF
nnoremap <F6> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
" requires the_silver_searcher
" used to ignore gitignore files
let $FZF_DEFAULT_COMMAND = 'ag -g ""'


"------------------------------------------------------COC-Nvim
let g:coc_global_extensions = ['coc-highlight','coc-pairs','coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']


"-----------------------------------------SETTINGS---------------------------------------------"
set number relativenumber
set splitbelow 
set splitright
set mouse=a
set cursorline

"autocmd InsertEnter * highlight CursorLine guibg=#FFAF7E guifg=default
"autocmd InsertLeave * highlight CursorLine guibg=default guifg=defaul

"                   Visual Mode Orange Background, Black Text
" highlight Visual  guibg=#FFB86C guifg=default

"                           Default Colors for CursorLine
" highlight CursorLine guibg=default guifg=default
" highlight Cursor guibg=#A6E22E guifg=#A6E22E

"                   Change Color when entering Insert Mode
" autocmd InsertEnter * highlight  CursorLine guibg=#50FA7B guifg=#2E3038
" autocmd InsertEnter * highlight  Cursor guibg=#50FA7B

"                   Revert Color to default when leaving Insert Mode
" autocmd InsertLeave * highlight  CursorLine guibg=#424450 guifg=default
" autocmd InsertLeave * highlight  Cursor guibg=#A6E22E

"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10

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

"----------------------------------------------------- Tab Width
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

"------------------------------------------------------Resize windows
" Use ctrl + hjkl to resize windows
nnoremap <C-j>    :resize +2<CR>
nnoremap <C-k>    :resize -2<CR>
nnoremap <C-h>    :vertical resize +2<CR>
nnoremap <C-l>    :vertical resize -2<CR>

