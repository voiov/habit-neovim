
set foldlevelstart=1
set foldmethod=syntax
set ignorecase smartcase
let mapleader ="\<Space>"
tnoremap <Esc> <C-\><C-n>
map <C-t> :terminal<CR>

nnoremap <silent> [a     <cmd>previous<CR>
nnoremap <silent> ]a     <cmd>next<CR>
nnoremap <silent> [A     <cmd>first<CR>
nnoremap <silent> ]A     <cmd>last<CR>
nnoremap <silent> [b     <cmd>bprevious<CR>
nnoremap <silent> ]b     <cmd>bnext<CR>
nnoremap <silent> [B     <cmd>bfirst<CR>
nnoremap <silent> ]B     <cmd>blast<CR>
nnoremap <silent> [l     <cmd>lprevious<CR>
nnoremap <silent> ]l     <cmd>lnext<CR>
nnoremap <silent> [L     <cmd>lfirst<CR>
nnoremap <silent> ]L     <cmd>llast<CR>
nnoremap <silent> [<C-L> <cmd>lpfile<CR>
nnoremap <silent> ]<C-L> <cmd>lnfile<CR>
nnoremap <silent> [q     <cmd>cprevious<CR>
nnoremap <silent> ]q     <cmd>cnext<CR>
nnoremap <silent> [Q     <cmd>cfirst<CR>
nnoremap <silent> ]Q     <cmd>clast<CR>
nnoremap <silent> [<C-Q> <cmd>cpfile<CR>
nnoremap <silent> ]<C-Q> <cmd>cnfile<CR>
nnoremap <silent> [t     <cmd>tabprevious<CR>
nnoremap <silent> ]t     <cmd>tabNext<CR>
nnoremap <silent> [T     <cmd>tabfirst<CR>
nnoremap <silent> ]T     <cmd>tablast<CR>
nnoremap <silent> <leader>w <cmd>w<CR>
nnoremap <silent> <leader>q <cmd>q<CR>
nnoremap <silent> <leader>x <cmd>bd<CR>
nnoremap <silent> <leader>Q <cmd>q!<CR>
nnoremap <silent> <leader>ev <cmd>edit $MYVIMRC<CR>
nnoremap H ^
nnoremap L $
noremap <Down> gj
noremap <Up> gk

" buffer only
function! DeleteInactiveBufs()
    "From tabpagebuflist() help, get a list of all buffers in all tabs
    let tablist = []
    for i in range(tabpagenr('$'))
        call extend(tablist, tabpagebuflist(i + 1))
    endfor

    let nWipeouts = 0
    for i in range(1, bufnr('$'))
        if bufexists(i) && !getbufvar(i,"&mod") && index(tablist, i) == -1
            silent exec 'bwipeout' i

            let nWipeouts = nWipeouts + 1
        endif
    endfor
    echomsg nWipeouts . ' buffer(s) wiped out'
endfunction
command! Bonly :call DeleteInactiveBufs()

function! DeleteEmptyBuffers()
    let [i, n; empty] = [1, bufnr('$')]
    while i <= n
        if bufexists(i) && bufname(i) == ''
            call add(empty, i)
        endif
        let i += 1
    endwhile
    if len(empty) > 0
        exe 'bdelete' join(empty)
    endif
endfunction
command! BdeleteEmpty :call DeleteEmptyBuffers()

" auto jump last modified line
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"zz" |
    \ endif







set foldlevelstart=1
set foldmethod=syntax
set ignorecase smartcase
let mapleader ="\<Space>"
tnoremap <Esc> <C-\><C-n>
map <C-t> :terminal<CR>

nnoremap <silent> [a     <cmd>previous<CR>
nnoremap <silent> ]a     <cmd>next<CR>
nnoremap <silent> [A     <cmd>first<CR>
nnoremap <silent> ]A     <cmd>last<CR>
nnoremap <silent> [b     <cmd>bprevious<CR>
nnoremap <silent> ]b     <cmd>bnext<CR>
nnoremap <silent> [B     <cmd>bfirst<CR>
nnoremap <silent> ]B     <cmd>blast<CR>
nnoremap <silent> [l     <cmd>lprevious<CR>
nnoremap <silent> ]l     <cmd>lnext<CR>
nnoremap <silent> [L     <cmd>lfirst<CR>
nnoremap <silent> ]L     <cmd>llast<CR>
nnoremap <silent> [<C-L> <cmd>lpfile<CR>
nnoremap <silent> ]<C-L> <cmd>lnfile<CR>
nnoremap <silent> [q     <cmd>cprevious<CR>
nnoremap <silent> ]q     <cmd>cnext<CR>
nnoremap <silent> [Q     <cmd>cfirst<CR>
nnoremap <silent> ]Q     <cmd>clast<CR>
nnoremap <silent> [<C-Q> <cmd>cpfile<CR>
nnoremap <silent> ]<C-Q> <cmd>cnfile<CR>
nnoremap <silent> [t     <cmd>tabprevious<CR>
nnoremap <silent> ]t     <cmd>tabNext<CR>
nnoremap <silent> [T     <cmd>tabfirst<CR>
nnoremap <silent> ]T     <cmd>tablast<CR>
nnoremap <silent> <leader>w <cmd>w<CR>
nnoremap <silent> <leader>q <cmd>q<CR>
nnoremap <silent> <leader>x <cmd>bd<CR>
nnoremap <silent> <leader>Q <cmd>q!<CR>
nnoremap <silent> <leader>ev <cmd>edit $MYVIMRC<CR>
nnoremap H ^
nnoremap L $
noremap <Down> gj
noremap <Up> gk

" buffer only
function! DeleteInactiveBufs()
    "From tabpagebuflist() help, get a list of all buffers in all tabs
    let tablist = []
    for i in range(tabpagenr('$'))
        call extend(tablist, tabpagebuflist(i + 1))
    endfor

    let nWipeouts = 0
    for i in range(1, bufnr('$'))
        if bufexists(i) && !getbufvar(i,"&mod") && index(tablist, i) == -1
            silent exec 'bwipeout' i

            let nWipeouts = nWipeouts + 1
        endif
    endfor
    echomsg nWipeouts . ' buffer(s) wiped out'
endfunction
command! Bonly :call DeleteInactiveBufs()

function! DeleteEmptyBuffers()
    let [i, n; empty] = [1, bufnr('$')]
    while i <= n
        if bufexists(i) && bufname(i) == ''
            call add(empty, i)
        endif
        let i += 1
    endwhile
    if len(empty) > 0
        exe 'bdelete' join(empty)
    endif
endfunction
command! BdeleteEmpty :call DeleteEmptyBuffers()

" auto jump last modified line
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"zz" |
    \ endif


