syntax on
set number
map <C-_> gcc
map <C-w> :wq<CR>
noremap Y y$ 
noremap nerd :NERDTreeToggle<CR>
execute pathogen#infect()
filetype plugin indent on
set statusline+=r:%l,c:%c,
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Autoclose for NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'
