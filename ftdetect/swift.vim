autocmd BufNewFile,BufRead *.spr set filetype=superflow
autocmd BufRead * call s:Swift()
function! s:Swift()
  if !empty(&filetype)
    return
  endif

  let line = getline(1)
  if line =~ "^#!.*spr"
    setfiletype superflow
  endif
endfunction
