nnoremap <C-n> :Defx -listed -resume  -columns=indent:mark:icon:icons:filename:indent:git:size:time  -buffer-name=tab`tabpagenr()` `expand('%:p:h')` -search=`expand('%:p')`<CR>
nnoremap <C-f> :Defx -new `expand('%:p:h')` -search=`expand('%:p')`<CR>


call defx#custom#column('icon', {
      \ 'directory_icon': '▸',
      \ 'opened_icon': '▾',
      \ 'root_icon': ' ',
      \ })

call defx#custom#column('mark', {
      \ 'readonly_icon': '',
      \ 'selected_icon': '✓',
      \ })

call defx#custom#column('git', 'indicators', {
  \ 'Modified'  : 'M',
  \ 'Staged'    : '✚',
  \ 'Untracked' : '✭',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : '═',
  \ 'Ignored'   : '☒',
  \ 'Deleted'   : '✖',
  \ 'Unknown'   : '?'
  \ })

call defx#custom#column('time', {
      \ 'format': '  %Y/%m/%d  %H:%M:%S',
      \ })


" autocmd VimEnter * execute 'Defx'
autocmd BufWritePost * call defx#redraw()
autocmd BufEnter * call defx#redraw()

autocmd FileType defx call s:defx_my_settings()
  function! s:defx_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
      \ defx#is_binary() ?
      \ defx#do_action('execute_system') :
      \ defx#do_action('open')

  nnoremap <silent><buffer><expr> E     defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> l     
      \ defx#is_binary() ?
      \ defx#do_action('execute_system') :
      \ defx#do_action('open')

  nnoremap <silent><buffer><expr> o     defx#do_action('open_or_close_tree')
  nnoremap <silent><buffer><expr> q     defx#do_action('quit')
  nnoremap <silent><buffer><expr> .     defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> yy    defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> ~     defx#do_action('cd')
  nnoremap <silent><buffer><expr><nowait> \  defx#do_action('cd', getcwd())
  nnoremap <silent><buffer><expr> h     defx#do_action('cd', ['..'])

  nnoremap <silent><buffer><expr><nowait> <Space> defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *      defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j  line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k  line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-c>  defx#do_action('clear_select_all')
  nnoremap <silent><buffer><expr> <C-l>  defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>  defx#do_action('print')

  nnoremap <silent><buffer><expr> K     defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N     defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> D     defx#do_action('remove')
  nnoremap <silent><buffer><expr> r     defx#do_action('rename')
  nnoremap <silent><buffer><expr> !     defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> S     defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> >     defx#do_action('resize', defx#get_context().winwidth + 10)
  nnoremap <silent><buffer><expr> <     defx#do_action('resize', defx#get_context().winwidth - 10)
  nnoremap <silent><buffer><expr><nowait> c  defx#do_action('copy')
  nnoremap <silent><buffer><expr><nowait> m  defx#do_action('move')
  nnoremap <silent><buffer><expr><nowait> p  defx#do_action('paste')

endfunction

