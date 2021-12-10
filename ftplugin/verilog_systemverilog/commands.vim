nnoremap <leader>c :call <SID>ToggleCommentString(getcurpos()[1], getcurpos()[2])<cr>
vnoremap <leader>c :<c-u>call <SID>ToggleCommentArea()<cr>
inoremap <leader>c <esc>l:call <SID>ToggleCommentString(getcurpos()[1], getcurpos()[2])<cr>i

function! s:CheckUncomment(line)
    let context = getline(a:line)
    return context[0:1] !=# "//"
endfunction

function! s:CommentLine(line)
    execute "normal! :" . a:line . "\<cr>0i//\<esc>"
endfunction

function! s:UncommentLine(line)
    execute "normal! :" . a:line . "\<cr>02dl\<esc>"
endfunction

function! s:ToggleCommentString(line, column)
    if s:CheckUncomment(a:line)
        call s:CommentLine(a:line)
        call setpos(".", [0, a:line, a:column + 2, 0])
    else
        call s:UncommentLine(a:line)
        call setpos(".", [0, a:line, a:column - 2, 0])
    endif
endfunction

function! s:ToggleCommentArea()
    execute "normal! `<"
    let sline   = getcurpos()[1]
    execute "normal! `>"
    let eline   = getcurpos()[1]
    let i = sline
    let uncomment = 0
    while i <= eline
        let uncomment += s:CheckUncomment(i)
        let uncomment -= split(getline(i), " ") == []
        let i += 1
    endwhile
    let i = sline
    while i <= eline
        if uncomment
            call s:CommentLine(i)
        else
            call s:UncommentLine(i)
        endif
        let i += 1
    endwhile
endfunction

