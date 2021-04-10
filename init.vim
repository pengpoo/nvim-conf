" 初始化一些全局变量
call common#common#init()

" 定义载入配置命令
command! -nargs=1 LoadScript exec 'source ' . g:config_root_path . '<args>'

" 载入基础配置
LoadScript base.vim

" vim-plug 载入插件
call plug#begin(get(g:, 'plugins_install_path', '~/.vim/plugin/'))
LoadScript plugin_list.vim
call plug#end()

" 载入快捷键配置
LoadScript keymap.vim
" 载入主题配置
LoadScript themes/theme.vim
LoadScript themes/statusline.vim
LoadScript themes/tabline.vim

" 载入定义的snippets
source ~/.config/nvim/snippets/md-snippets.vim

" 依据插件名字载入对应的插件配置
function s:source_config(plugName) abort
    let l:config_path = g:plugins_config_root_path . a:plugName . ".vim"
    if filereadable(l:config_path)
        exec 'source' fnameescape(l:config_path)
    endif
endfunction





