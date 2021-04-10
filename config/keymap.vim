" ====
" mapping
" ====
let mapleader=" "

noremap ; :

" source init.vim in nvim
noremap <LEADER>rc :source ~/.config/nvim/init.vim<CR>

" search
noremap <LEADER><CR> :nohlsearch<CR>

" compile
noremap r :call common#functions#CompileRunGcc()<CR>

noremap <LEADER>md :MarkdownPreview<CR>
