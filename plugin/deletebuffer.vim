" Name   : vim-deletebuffer
" Version: 0.1
" Author : karakaram
" License: Creative Commons Attribution 2.1 Japan License
"          <http://creativecommons.org/licenses/by/2.1/jp/deed.en>

let s:save_cpo = &cpo
set cpo&vim

nnoremap <silent> <Plug>(delete_inactive_buffer)
  \ :<C-u>call deletebuffer#DeleteInactiveBuffer()<CR>
nnoremap <silent> <Plug>(delete_except_current_buffer)
  \ :<C-u>call deletebuffer#DeleteExceptCurrentBuffer()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set fdm=marker ts=2 sw=2 sts=0 expandtab filetype=vim:
