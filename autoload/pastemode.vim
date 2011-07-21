function! pastemode#EnterPasteMode()
    augroup pastemode
        autocmd!
        autocmd InsertLeave <buffer> call pastemode#LeavePasteMode()
    augroup end
    setlocal paste
    startinsert
endfunc

function! pastemode#LeavePasteMode()
    augroup pastemode
        autocmd!
    augroup end
    set nopaste
endfunc
