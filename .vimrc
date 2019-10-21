" must run at the beginingjjk
" no high light when open new file
exec "nohlsearch"
" Set <LEADER> as <SPACE>
let mapleader=" "

" screen
syntax on
set wrap
set showcmd
" remap keys

" nnoremap, using leader
" break one line to two lines at cursor
nnoremap <Leader>j i<CR><ESC>
" convenient to config .vimrc
nnoremap <Leader>hc :split $MYVIMRC<CR>
nnoremap <Leader>vc :vsplit $MYVIMRC<CR>
nnoremap <Leader>sr :source $MYVIMRC<CR>

map S :w<CR>





autocmd Filetype markdown inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap ,h ====<Space><++><Esc>F=hi
autocmd Filetype markdown inoremap ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,l --------<Enter>



























" compile function to preview markdown
" 'R' is go into the replace model in default
map R : call CompileRunGcc()<CR>
func! CompileRunGcc()
  if &filetype == 'markdown'
    exec "MarkdownPreview"
  elseif &filetype == 'vimwiki'
    exec "MarkdownPreview"
  endif
endfunc


" intend
set tabstop=4
set shiftwidth=4
set autoindent

" show status
set laststatus=2
set scrolloff=3

" show line number
set nu
augroup relative_number
	autocmd!
	autocmd! InsertEnter * :set norelativenumber
	autocmd! InsertEnter * :set relativenumber
augroup END
	

set number
set rnu
set cursorline

" search
"
" high light search
set hlsearch
" high light when input 
set incsearch
" ignore case
set ignorecase
" smart case, if use Upper and lower at the same time, will nore ignore case
set smartcase
set hls
map <LEADER><CR> :nohlsearch<CR>

" set placeholder
" Press space twice to jump to the next '<++>' and edit it
map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

"autocmd BufWritePost $MYVIMRC source $MYVIMRC
"set cursorcolumn

" Vim-Plug
call plug#begin('~/.vim/plugged')

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'
call plug#end()


" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
"let g:mkdp_browser = 'chromium'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
