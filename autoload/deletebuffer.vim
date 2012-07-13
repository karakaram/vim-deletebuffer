function! deletebuffer#DeleteInactiveBuffer()
  let last_buffer = bufnr('$')
  let delete_count = 0
  let n = 1
  while n <= last_buffer
    if buflisted(n) && !bufloaded(n)
      silent exe 'bd' . ' ' . n
      let delete_count = delete_count + 1
    endif
    let n = n + 1
  endwhile
  echomsg delete_count "buffer deleted"
endfunction
