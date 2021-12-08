nnoremap <leader>c :call <SID>ToggleComment(getcurpos()[1], getcurpos()[2])<cr>

function! s:CheckComment(line)
    let context = getline(a:line)
    return context[0:1] ==# "//"
endfunction

function! s:CommentLine(line)
    execute "normal! :" . a:line . "\<cr>0i//\<esc>"
endfunction

function! s:UncommentLine(line)
    echom a:line
    execute "normal! :" . a:line . "\<cr>02dl\<esc>"
endfunction

function! s:ToggleComment(line, colomn)
    if s:CheckComment(a:line)
        call s:UncommentLine(a:line)
    else
        call s:CommentLine(a:line)
    endif
endfunction

