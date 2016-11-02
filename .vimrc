"
" .vimrc
" Ken Dixon
"

" Compatibility mode (keep at top; will change settings away from vi defaults)
set nocompatible  

" Pathogen -- easy plugin installation
execute pathogen#infect()

" Enable filetype plugins
filetype plugin on 

" Visual
syntax on                        " enable syntax highlighting
set background=dark              " dark background
"colorscheme default              " default colorscheme
let g:solarized_termcolors=256   " make solarized work without changing Terminal.app
colorscheme solarized            " solarized colorscheme
set ruler                        " row/column info at lower-right 
set t_Co=256                     " 256 colors
set number                       " line numbers

" Shortcuts
set expandtab    " Turn tabs to spaces
set tabstop=4    " Set number of spaces in a tab

" Motion
"   Number of lines between cursor and edge of terminal when scrolling
set scrolloff=5      " rows 
set sidescrolloff=5  " columns

" Indentation (number of characters to move text using >> or <<)
set shiftwidth=4

" Searching
set ignorecase  " case insensitive
set hlsearch    " enable highlighting

" Spell Check (only for tex, txt)
autocmd BufNewFile,BufRead *.{tex,txt} setlocal spell
hi clear SpellBad
hi Spellbad cterm=underline,bold

" Markdown
au BufRead,BufNewFile *.md setlocal textwidth=80
