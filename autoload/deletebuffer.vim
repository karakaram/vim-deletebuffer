" Name   : vim-deletebuffer
" Version: 0.1
" Author : karakaram
" License: Creative Commons Attribution 2.1 Japan License
"          <http://creativecommons.org/licenses/by/2.1/jp/deed.en>

function! deletebuffer#DeleteInactiveBuffer()
  let last_buffer = bufnr('$')
  let delete_count = 0
  let n = 1
  while n <= last_buffer
    if buflisted(n) && !bufloaded(n)
      silent execute 'bdelete ' . n
      let delete_count = delete_count + 1
    endif
    let n = n + 1
  endwhile
  echomsg delete_count "buffer was deleted"
endfunction

function! deletebuffer#DeleteExceptCurrentBuffer()
  let current_buffer = bufnr('%')
  let last_buffer = bufnr('$')
  let delete_count = 0
  let n = 1
  while n <= last_buffer
    if n != current_buffer && buflisted(n)
      if getbufvar(n, '&modified')
        echohl ErrorMsg
        echomsg bufname(n) . ' buffer is not writed'
        echohl None
      else
        silent execute 'bdelete ' . n
        if ! buflisted(n)
          let delete_count = delete_count + 1
        endif
      endif
    endif
    let n = n + 1
  endwhile
  echomsg delete_count "buffer was deleted"
endfunction
