" .vimrc
"
" The configuration is targeted at and has only been tested on terminal vim.

if has('nvim')
  let s:dir_vim_config = expand("~/.config/nvim")
endif

if !has('nvim')
  " The following have been removed in neovim.
  " Use Vim settings, rather then Vi settings.
  " This must be first, because it changes other options as a side effect.
  set nocompatible
  set shell=/bin/bash
endif

set encoding=utf-8
set history=10000               " Keep 10000 lines of command line history.
set mouse=a                     " Enable the mouse (eg. for resizing).
set ignorecase                  " Ignore case in search by default,
set smartcase                   " but be case sensitive when using uppercase.
set wildmenu                    " Command-line completion in an enhanced mode.
set wildmode=list:longest       " Complete longest common string, then list.
set showcmd                     " Display incomplete commands.
set noerrorbells                " No bells.

nnoremap <Space> <Nop>
nnoremap f <Nop>
" Default Leader will be \

" Presentation ============================================================={{{1

set termguicolors               " Use gui colors in the terminal.
colorscheme quiet
" Use different cursor styles in different modes.
set guicursor=a:block,i-ci:ver10,r-cr:hor10
set winminheight=0              " Minimum size of splits is 0.
set nowrap                      " Do not wrap lines.
let &sbr = nr2char(8618).' '    " Show ↪ at the beginning of wrapped lines.
set scrolloff=5                 " Show at least 5 lines around the cursor.

set foldlevelstart=99

set number                      " Display line numbers.

set cursorline

" Load/save and automatic backup ==========================================={{{1

let &directory=s:dir_vim_config.'/backup/swap'
let &viewdir=s:dir_vim_config.'/backup/view'
let &backupdir=s:dir_vim_config.'/backup/backup'
let &undodir=s:dir_vim_config.'/backup/undo'

" Create directories if they don't already exist.
if !isdirectory(&directory)
  exec "silent !mkdir -p " . &directory
  exec "silent !chmod 750 " . &directory
endif
if !isdirectory(&viewdir)
  exec "silent !mkdir -p " . &viewdir
  exec "silent !chmod 750 " . &viewdir
endif
if !isdirectory(&backupdir)
  exec "silent !mkdir -p " . &backupdir
  exec "silent !chmod 750 " . &backupdir
endif
if !isdirectory(&undodir)
  exec "silent !mkdir -p " . &undodir
  exec "silent !chmod 750 " . &undodir
endif

" Backup files.
set backup
" Keep a history of the edits so changes from a previous session can be
" undone.
set undofile

" Automatically save and load views.
autocmd BufWinLeave,BufWrite *.* mkview
autocmd BufWinEnter *.* silent! loadview

" Jump to last known cursor position when editing a file.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

set autoread  " Automatically reload files changed on the disk.
set autowrite " Write a modified buffer on each :next , ...

" Autodetect filetype on first save.
autocmd BufWritePost * if &ft == "" | filetype detect | endif

" Plugins =================================================================={{{1

" Plugins Requiring Lua Configuration =================={{{2

if has('nvim')
  lua require('plugins')
endif

" }}}2

" Use Vim-plug to manage the plugins. See https://github.com/junegunn/vim-plug
" for details.

call plug#begin(s:dir_vim_config.'/plugged')

" Word highlighting.
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-mark'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'wesQ3/vim-windowswap'

" Allows editing the quickfix window.
Plug 'jceb/vim-editqf'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" Provide a way to early exit when installing plugins.
" Otherwise would would crash in the lua config below before modules are installed.
if $VIM_INSTALL_PLUGINS == "1"
  finish
endif


" Editing =================================================================={{{1

set backspace=indent,eol,start   " Backspacing over everything in insert mode.
set hlsearch                     " Highlight the last used search pattern.
set showmatch                    " Briefly display matching bracket.
set matchtime=5                  " Time (*0.1s) to show matching bracket.
set incsearch                    " Perform incremental searching.
set tags=.tags
set mouse=r

nnoremap <Leader>\ :Telescope find_files<CR>
nnoremap <Leader><CR> :Telescope live_grep<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>h :split<CR>
nnoremap <Leader><Space> :nohlsearch<CR>
" nnoremap <Leader>] :Telescope file_browser<CR>
nnoremap <Leader>( :NvimTreeToggle<CR>

" Move between splits. Default
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

" To make this work with tmux... modify /usr/share/byobu/keybindings/f-keys.tmux
" Comment out the following lines
" bind-key -n S-Up display-panes \; select-pane -U
" bind-key -n S-Down display-panes \; select-pane -D
" bind-key -n S-Left display-panes \; select-pane -L
" bind-key -n S-Right display-panes \; select-pane -R

" And add the following lines
" is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
" | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
" bind-key -n S-Up if-shell "$is_vim" "send-keys S-Up" "display-panes; select-pane -U"
" bind-key -n S-Down if-shell "$is_vim" "send-keys S-Down" "display-panes; select-pane -D"
" bind-key -n S-Left if-shell "$is_vim" "send-keys S-Left" "display-panes; select-pane -L"
" bind-key -n S-Right if-shell "$is_vim" "send-keys S-Right" "display-panes; select-pane -R"


let g:tmux_navigator_no_mappings = 1
noremap <silent> <S-Left> :<C-U>TmuxNavigateLeft<cr>
noremap <silent> <S-Down> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <S-Up> :<C-U>TmuxNavigateUp<cr>
noremap <silent> <S-Right> :<C-U>TmuxNavigateRight<cr>

"" Completion ==========================================={{{2
"" Display a menu, insert the longest common prefix but don't select the first
"" entry, and display some additional information if available.
set completeopt=menu,menuone,noselect,longest

"" Grep/tags ============================================{{{2
"
"" Grep in current directory.
set grepprg=grep\ -RHIn\ --exclude=\".tags\"\ --exclude-dir=\".svn\"\ --exclude-dir=\".git\"\ --exclude-dir=\"bazel-*\"

" Indentation =========================================={{{2

"set textwidth=80
set nojoinspaces

" Automatically strip the comment marker when joining automated lines.
set formatoptions+=j
" Recognize numbered lists and indent them nicely.
set formatoptions+=n

command! IndentTab         set noexpandtab shiftwidth=8 tabstop=8 cinoptions=(0,w1,i4,W4,l1,g1,h1,N-s,t0,+4
command! IndentGoogle      set   expandtab shiftwidth=2 tabstop=2 cinoptions=(0,w1,i4,W4,l1,g1,h1,N-s,t0,+4
command! IndentLinuxKernel set noexpandtab shiftwidth=8 tabstop=8 cinoptions=(0,w1,i4,W4,l1,g1,h1,N-s,t0,:0,+4
command! IndentLLVM        set   expandtab shiftwidth=2 tabstop=2 cinoptions=(0,w1,i4,W4,l1,g0,h2,N-s,t0,:0,+4

" Default indentation styles
IndentGoogle
autocmd FileType cpp IndentLLVM
autocmd FileType sh IndentLLVM

" Command-line shortcuts that expand to the path of the current file.
cabbr <expr> %% fnameescape(expand('%:h'))
cabbr <expr> $$ fnameescape(expand('%'))
cabbr <expr> %%f fnameescape(expand('%:hp'))
cabbr <expr> $$f fnameescape(expand('%:p'))

" Projects ================================================================={{{1

command! IndentAP          set   expandtab shiftwidth=4 tabstop=4
augroup autopilot
  au!
  autocmd BufEnter */autopilot/* IndentAP
augroup END
