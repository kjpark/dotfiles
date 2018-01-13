" vimrc 2.0
" rip vimrc 1.0 to the mv command :(

" good starting point
" https://dougblack.io/words/a-good-vimrc.html
" 'Don't put any lines in your vimrc that you don't understand.'

" https://draculatheme.com/vim/
colorscheme dracula

" Spaces and Tabs
syntax enable           " enable...syntax
set tabstop=4           " tab = 4 spaces
set softtabstop=4       " tab while editing
set expandtab           " tabs are spaces
set shiftwidth=4        " >> indents 4 spaces

set backspace=indent,eol,start " backspace over newlines

" UI Config
set number              " line #s
set showcmd             " shows current command
set cursorline          " line highlight
set lazyredraw          " idk but this is probs why i need the <C-l> hack
set showmatch           " and this
" filetype indent on // ~/.vim/indent/LANG.vim
" set wildmenu       // visual autocomplete for vim menu

nnoremap <silent> <C-l> :nohl<CR><C-l> " <C-l> = redraw + rm highlights
set ruler               " x and y positions in bottom right
set noesckeys           " no delay with ^[ followed by O

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
