"I should do this one thing at a time as I see need for it so i know how it works
"Vim Plug
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
":PlugInstall
call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox', { 'as': 'gruvbox' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'

call plug#end()

"THEME_STUFF
set termguicolors
colorscheme gruvbox
set bg=dark
" let g:gruvbox_contrast_dark='hard'
"END_THEME_STUFF


"NERDCOMMENTER_STUFF
"comment things out with [count]<leader>cc which is actually 3 \ cc for
"commenting out next 3 lines
filetype plugin on
" Create default mappings
let g:NERDCreateDefaultMappings = 1 

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
"END_NERDCOMMENTER_STUFF


"SET_INSERT_CURSOR_TO_LINE
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set ttimeout
set ttimeoutlen=1
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set ttyfast
"END_SET_INSERT_CURSOR_TO_LINE

"NERDTREE_STUFF
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
"END_NERDTREE_STUFF

"CHANGE_PANEL_FOCUS
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
"END_CHANGE_PANEL_FOCUS


" turn hybrid line numbers on
:set number relativenumber
:set nu rnu
