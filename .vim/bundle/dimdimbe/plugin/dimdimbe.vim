" - select all the document
function DIMselectAll()
    normal! gg0vG$
    echo '🤘 All the document is now selected'
endfunction

" - copy all the document
function DIMcopyAll()
    :%y+
    echo '🤘 All the document is now copied'
endfunction

" - javascript one line comment
function DIMjsOneComment()
    normal! mm0i//
    normal! `m
    echo '🙈 This line is now commented (javascript)'
endfunction

" - javascript multi line comment
function DIMjsMultiComment()
    echo '🙈 These lines are now commented (javascript)'
endfunction

" - reindent
function DIMindent()
    normal! mmgg=G`m
    echo '🤖 Code is now indented properly'
endfunction

function DIMtest()
    echo system('ls')
endfunction
nnoremap ,t :call DIMtest()<cr>

" Remap DIM function
nnoremap ,a :call DIMselectAll()<cr>
nnoremap ,c :call DIMcopyAll()<cr>
nnoremap ,/ :call DIMjsOneComment()<cr>
nnoremap ,I :call DIMindent()<cr>

"replace all occurence of the current word
nnoremap ,r :%s/<c-r><c-w>//gc<c-f>$F/i
nnoremap ,s <Esc>:w<cr>
"nnoremap ,n yy:r !node ~/code/vimstuff/nodetest.js "<c-r>0" <CR>
nnoremap ,n :r !node ~/code/vimstuff/nodetest.js "<c-r><c-w>" <CR>
nnoremap ,b :r !node ~/code/vimstuff/nodetest.js 

nnoremap ,x :!clear && node  %:p <CR>
" Remap Escape to go on ,, in all Modes
map ,, <Esc>
imap ,, <Esc>
