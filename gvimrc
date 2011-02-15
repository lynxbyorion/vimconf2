" Highlight the screen line of the cursor
set cursorline

"""""""""""""""""" GUI options """"""""""""""""""""
" Disable Toolbar
set guioptions-=T
" Use console dialog instead and disable GUI dialog
set guioptions+=c
" Disable GUI tabs
set guioptions-=e

set guifont=Consolas\ 11

au GUIEnter * : set lines=9999 columns=9999

colorscheme xoria256

" Меню -->
    " По умолчанию меню скрыто
    set guioptions-=m

    " Горячие клавиши скрытия/отображения меню -->
        function! MyToggleMenu()
            let old_guioptions = &guioptions

            " Если меню в данный момент видимо
            if stridx(old_guioptions, 'm') != -1
                set guioptions-=m
            else
                set guioptions+=m
            endif
        endfunction

        cmap <C-F11> <ESC>:call MyToggleMenu()<CR>
        imap <C-F11> <ESC>:call MyToggleMenu()<CR>
        nmap <C-F11> :call MyToggleMenu()<CR>
        vmap <C-F11> <ESC>:call MyToggleMenu()<CR>
    " Горячие клавиши скрытия/отображения меню <--
" Меню <--

