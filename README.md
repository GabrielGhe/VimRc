# VimRc

```
set encoding=utf-8

syntax on
set number
set relativenumber
set list
set showbreak=↪\
set listchars=tab:→\ ,eol:↲,extends:›,precedes:‹
set linespace=6
set smartcase

set rtp+=~/.vim/bundle/tabnine-vim
set rtp+=~/.fzf

execute pathogen#infect()

filetype plugin indent on

let $FZF_DEFAULT_OPTS="--preview-window 'right:57%' --preview 'bat --style=numbers --line-range :300 {}'
            \ --bind ctrl-w:preview-up,ctrl-s:preview-down,
            \ctrl-e:preview-page-up,ctrl-d:preview-page-down"

command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '--ignore legacy_platforms', fzf#vim#with_preview({'options': ['--delimiter', '--nth 4..']}), <bang>0)

nnoremap <leader>] :NERDTreeFind<CR>
nnoremap <leader>[ :NERDTreeToggle<CR>
"nnoremap <leader><Left> <C-O>
"nnoremap <leader><Right> <C-I>
nnoremap <leader>\ :GFiles!<CR>
nnoremap <leader><Enter> :Ag!<CR>

"Interacting with split screen in Vim
"\←    Ctrl-w h        Shift focus to split on left of current
"\→    Ctrl-w l        Shift focus to split on right of current
"\↓    Ctrl-w j        Shift focus to split below the current
"\↑    Ctrl-w k        Shift focus to split above the current
nnoremap <Leader><Left>  <C-w>h
nnoremap <Leader><Right> <C-w>l
nnoremap <Leader><Down>  <C-w>j
nnoremap <Leader><Up>    <C-w>k
"\v Ctrl-w v          Split screen vertically
"\h Ctrl-w s          Split screen horizontally
nnoremap <Leader>v <C-w>v
nnoremap <Leader>h <C-w>s

vmap <leader>y "*y
vmap <leader>p <ESC>"*p
imap <leader>p <ESC>"*p

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set nofixendofline
set clipboard=unnamed
```
