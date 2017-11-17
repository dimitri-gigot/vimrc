execute pathogen#infect()
filetype plugin indent on
set runtimepath^=~/.vim/bundle/node
syntax on
set number
set foldcolumn=1
set smarttab
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
colors molokai
set tabstop=2 shiftwidth=2 expandtab
set showcmd
set cursorline
"hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=white guibg=lightgrey guifg=white
set showmatch
set incsearch 
set hlsearch  "highlight search
set foldenable  " enable folding
set foldlevelstart=99   " open most folds by default
"set colorcolumn=90
set mouse=a

nnoremap <space> za
nnoremap <cr> :noh<CR><CR>:<backspace>

"allow ctrlp to work with NerdTree
function! CtrlPCommand()
    let c = 0
    let wincount = winnr('$')
    " Don't open it here if current buffer is not writable (e.g. NERDTree)
    while !empty(getbufvar(+expand("<abuf>"), "&buftype")) && c < wincount
        exec 'wincmd w'
        let c = c + 1
    endwhile
    exec 'CtrlP'
endfunction

let g:ctrlp_cmd = 'call CtrlPCommand()'

set backspace=indent,eol,start
set noeb vb t_vb=
" remaping
" -- snippet
nnoremap ,fn :-1read $HOME/.vim/.fn.js<CR>f(i



let g:ctrlp_working_path_mode = 'ra'

" move faster between split window
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

noremap Q !!sh<CR>
