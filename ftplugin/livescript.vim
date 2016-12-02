exec 'set tags+='. expand('<sfile>:h:h') . '/tags'
set ofu=JSfuzzycomplete
inoremap <tab> <c-x><c-o>

fun! JSfuzzycomplete (f,b)
    if a:f
        " find the col number when the word to complete starts
        
        let l:col  = col('.')

        " remove every chars after the cursor.
        " now you can match the word to complete as the keyword 
        " at the end of the string
        let l:word = matchstr(strpart(getline('.'),0,l:col),'\v\k+\ze\)?$')
        
        " and this word starts at col ...
        return l:col - len(l:word) - 1

    else

        " "let l:sub = '^' . substitute(a:b,'-','[^-]*-','g')
        let l:sub = '^' . a:b

        " so the word to complete  | returns a pattern
        " del-fun                  | ^del[^-]*-fun[^-]*-
        
        " now use this pattern to filter tags on their names
        " returns the list of the names of the tags
        return map(taglist(l:sub), 'v:val.cmd')

    endif
endfun
