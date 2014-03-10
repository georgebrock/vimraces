command! -nargs=1 -complete=file RaceTo :call SetupVimRaces(<q-args>)

function! SetupVimRaces(targetFile)
    let s:vimRacesTarget = a:targetFile
    augroup VimRace
        autocmd!
        autocmd BufWritePost * call CompareVimRaces()
    augroup END
endfunction

function! CompareVimRaces()
    execute("silent! !diff % ".s:vimRacesTarget)
    redraw!
    if v:shell_error == 0
        execute("!figlet Winner")
    endif
endfunction
