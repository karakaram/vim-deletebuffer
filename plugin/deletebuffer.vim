let s:save_cpo = &cpo
set cpo&vim

nnoremap <silent> <Plug>(delete_inactive_buffer)
  \ :<C-u>call deletebuffer#DeleteInactiveBuffer()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set fdm=marker ts=2 sw=2 sts=0 expandtab filetype=vim:
