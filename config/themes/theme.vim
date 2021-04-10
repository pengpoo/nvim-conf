if has('termguicolors')
    " fix bug for vim
    if !has('nvim')
        " if &term =~# '^screen\|^tmux'
        let &t_8f = "\e[38;2;%lu;%lu;%lum"
        let &t_8b = "\e[48;2;%lu;%lu;%lum"
        " endif
    endif
    " enable true color
    set termguicolors
endif
" set termguicolors

" 美化相关基本配置
" 高亮当前行列
set cursorline
" set cursorcolumn
" 高亮textwidth后的一列
set colorcolumn=+1
" 光标
set guicursor=n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20
" 搜索高亮
set incsearch
" 高亮匹配内容
set hlsearch
set list
" 只有set list下面的才会起作用
if &list
    set listchars=tab:\|\→·,nbsp:⣿,extends:»,precedes:«
    set listchars+=eol:¬
    set listchars+=trail:·
    " set listchars+=space:␣
endif
" 搜索高亮颜色
hi Search ctermfg=17 ctermbg=190 guifg=#000000 guibg=#ffff00

" 设置弹出框大小, 0 则有多少显示多少
set pumheight=20
if has('nvim')
    set pumblend=20 " 提示框透明
endif

" 主题选择
" let g:srcery_italic = 1
" let g:srcery_transparent_background = 1
" silent! colorscheme srcery

let g:forest_night_enable_italic = 1
let g:forest_night_transparent_background = 1
silent! colorscheme forest-night

