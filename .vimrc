" disable compatibility with vi which can cause unexpected issues.
set nocompatible

inoremap jj <esc>


" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on
"
" Load an indent file for the detected file type.
filetype indent on

"  Turn syntax highlighting on.
syntax on

" Highlight cursor line underneath the cursor horizontally.
"set cursorline
"
" Highlight cursor line underneath the cursor vertically.
"set cursorcolumn

" Do not wrap lines. Allow long lines to extend as far as the line goes.
" set nowrap

" Ignore capital letters during search.
" set ignorecase

" Override the ignorecase option if searching for capital letters.
" " This will allow you to search specifically for capital letters.
" set smartcase

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
" set showmatch

" Use highlighting when doing a search.
" set hlsearch

" Enable auto completion menu after pressing TAB.
" set wildmenu


" Make wildmenu behave like similar to Bash completion.
" set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" " Wildmenu will ignore files with these extensions.
" set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" Add numbers to each line on the left-hand side.
set number

		" Plug 'arcticicestudio/nord-vim'


" The default plugin directory will be as follows:
" "   - Vim (Linux/macOS): '~/.vim/plugged'
" " You can specify a custom plugin directory by passing it as the argument
" "   - e.g. `call plug#begin('~/.vim/plugged')`
" "   - Avoid using standard Vim directory names like 'plugin'

call plug#begin()
"color scheme 'nord' for vim"
Plug 'arcticicestudio/nord-vim'


" Initialize plugin system"
call plug#end()

colorscheme nord
