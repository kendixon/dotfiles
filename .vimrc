"
" .vimrc
" Ken Dixon
"

" Compatibility mode (keep at top; will change settings away from vi defaults)
set nocompatible  

" Set backspace to behave as expected (start,eol,indent)
set backspace=2 

" Pathogen -- easy plugin installation
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Enable filetype plugins
filetype plugin on 

" Visual
syntax on                        " enable syntax highlighting
set background=dark              " dark background
let g:solarized_termcolors=256   " make solarized work w/o changing Terminal.app
colorscheme solarized            " solarized colorscheme
set ruler                        " row/column info at lower-right 
set t_Co=256                     " 256 colors
set number                       " line numbers
set textwidth=80                 " set text width
set colorcolumn=+1               " put visual marker at textwidth+1 

" Shortcuts
set expandtab    " Turn tabs to spaces
set tabstop=4    " Set number of spaces in a tab

" Motion
"   Number of lines between cursor and edge of terminal when scrolling
set scrolloff=5      " rows 
set sidescrolloff=5  " columns

" Indentation (number of characters to move text using >> or <<)
set shiftwidth=4
set autoindent
set smartindent

" Searching
set ignorecase  " case insensitive
set hlsearch    " enable highlighting

" Spell Check (only for tex, txt)
autocmd BufNewFile,BufRead *.{md,tex,txt} setlocal spell
hi clear SpellBad
hi Spellbad cterm=underline,bold

" In Makefiles, don't expand tabs to spaces (need actual tab characters)
" needed, and have indentation at 8 chars to distinguish from non-tab
" indents
"  tabstop: how many columns a tab character counts for
"  shiftwidth: how many columns an indent is (>> or <<)
"  noexpandtab: don't expand tabs to spaces
"  softtabstop: how many columns vim uses when you hit tab
autocmd FileType make set noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

" Markdown
au BufRead,BufNewFile *.md setlocal textwidth=80

" Disable arrow key navigation
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
