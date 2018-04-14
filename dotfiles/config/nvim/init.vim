" Use vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" Syntax
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-git', { 'for': 'git' }
Plug 'tpope/vim-markdown', { 'for': 'markdown'}
Plug 'stephpy/vim-yaml', { 'for': 'yaml' }

" Quick git diff
Plug 'airblade/vim-gitgutter'

" Insanely good git wrapper
Plug 'tpope/vim-fugitive'

" Good config
Plug 'tpope/vim-sensible'

" Better (simple) file explorer
Plug 'tpope/vim-vinegar'

" Quickly modify 'surrondings', like brackets, quotes *ML tags
Plug 'tpope/vim-surround'

" Lots of support for quickly (un)commenting
Plug 'tpope/vim-commentary'

" Better statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" SublimeText-like multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Updated solarized colourscheme
Plug 'iCyMind/NeoSolarized'

" Initialise plugin system
call plug#end()

" Configure airline to use powerline fonts
let g:airline_powerline_fonts=1

" Recommended Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_alows_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" True colour support
set termguicolors

" Set colorscheme
set background=light
colorscheme NeoSolarized

" Use system clipboard
set clipboard=unnamedplus

" Always use line numbers
set number

" Ignore case in search unless upper-case is used
set ignorecase
set smartcase

" Show control characters
set list

" Mouse support
set mouse=a

" Whitespace helper
fun! TrimWhitespace()
	let l:save = winsaveview()
	%s/\s\+$//e
	call winrestview(l:save)
endfun
command! TrimWhitespace call TrimWhitespace()
noremap <Leader>w :call TrimWhitespace()<CR>
