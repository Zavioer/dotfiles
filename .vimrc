" disable compatibility
set nocompatible

" cursorline
set cursorline

" line number
set number

" syntax
set termguicolors
syntax on

" file type detection and other settings
filetype on
filetype plugin on
filetype indent on

" highlight cursor line underneath cursor horizontally
" set cursorline

" set shift width to 4 spaces
set shiftwidth=4

" set tab width to 4 columns
set tabstop=4

" use space instead of tabs
set expandtab

" do not save backup files
set nobackup

" command history
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" disable swapfiles
set noswapfile


" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}

call plug#begin()

Plug 'vim-python/python-syntax'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'dense-analysis/ale'

Plug 'lervag/vimtex', { 'tag': 'v2.15' }

call plug#end()


" colorscheme
colorscheme catppuccin_frappe


" python-syntax variables
let g:python_highlight_all = 1

" keybindings
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" spellchecking only for tex files
autocmd FileType tex setlocal spell spelllang=en,pl
