" prevent vim from emulating vi
set nocompatible    " set explicitly since not set when vimrc sourced with '-u' flag
" easier to reach than \
let mapleader = " "
" easier to reach than Esc or Ctrl-[
inoremap jk <Esc>

" easier window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Package Management
set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

let g:vundle_default_git_proto='git'
let g:youcompleteme = 1

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'"
Plugin 'gmarik/vundle'
Plugin 'ctrlpvim/ctrlp.vim' " CtrlP file explorer
Plugin 'mileszs/ack.vim' " Ack
" Editing help
Plugin 'Valloric/YouCompleteMe' " Autocomplete
Plugin 'tpope/vim-surround' " Closing parentheses, etc
Plugin 'spf13/vim-autoclose' " Don't insert a closing character if typed and it is already there
" Javascript
Plugin 'majutsushi/tagbar' " handles expandable tagged-files
Plugin 'jlanzarotta/bufexplorer' " buffer explorer
Plugin 'Konfekt/FastFold' " fast folding
Plugin 'airblade/vim-rooter' " sets the working directory
" Eye candy
Plugin 'plasticboy/vim-markdown' " syntax highlighting for MD
Plugin 'elzr/vim-json' " syntax highlighting for JSON
Plugin 'groenewege/vim-less' " syntax highlighting for less
Plugin 'scrooloose/syntastic' " syntax checking
Plugin 'tomasr/molokai' " molokai color scheme
Plugin 'spf13/vim-colors' " colors
Plugin 'bling/vim-airline' " Status line at bottom
Plugin 'bling/vim-bufferline' " Buffer line at bottom

" All of your Plugins must be added before the following line
call vundle#end()            " required

set backspace=indent,eol,start  " make backspace work like 'normal' text editors

" --history
set history=500    " history of commands and searches
set undolevels=500 " changes to be remembered

" --interface appearance
syntax enable    " enable syntax highlighting and allow custom highlighting
set title        " set title to filename and modification status
set number       " show line numbers
set ruler        " always show current position
set showcmd      " show the command being typed
set showmode     " show current mode (insert, visual, etc.)
set laststatus=2 " always show status line

" --searching
set ignorecase " ignore case when searching
set smartcase  " case sensitive only when capital letter in expression
set hlsearch   " highlight search terms
set incsearch  " show matches as they are found

" --feedback
set showmatch   " show matching braces when typed or under cursor
set matchtime=1 " length of time for 'showmatch'

" --redrawing / warnings
set lazyredraw   " don't redraw screen when executing macros
set noerrorbells " no bell for error messages
set visualbell   " use whatever 't_vb' is set to as a bell
set t_vb=        " set to nothing (disable)

" restore 't_vb' since it is reset after the GUI starts
if has("gui_running")
    augroup disable_gui_visualbell
        autocmd!
        autocmd GUIEnter * set t_vb=
    augroup end
endif

" --command-line completion
set wildmenu    " enhanced command-line completion

" --visual theme and appearance
set t_Co=256
set colorcolumn=100
"colorscheme ir_black
colorscheme molokai
"colorscheme peaksea
"colorscheme solarized
"colorscheme desert
"colorscheme neverland-mod

if has("gui_running")
    " gVim specific

    " gVim interface modification
    "set guioptions-=m " remove menu bar
    "set guioptions-=T " remove toolbar
endif

" --movement / navigation
set scrolloff=5 " scrolling starts 5 lines before window border


" --mouse input
"set mouse=a " enable mouse support

" --filetype detection
filetype plugin indent on   " let vim detect filetype and load appropriate scripts

" --character encoding
set encoding=utf-8                             " encoding used within vim
set fileencodings=ucs-bom,utf-8,default,latin1 " encodings to try when editing a file

" --buffer management
set hidden    " allow buffer to be changed without writing to disk
set autoread  " update file when externally modified

" --indenting
set fileformats=unix,dos,mac " try recognizing line endings in this order
set tabstop=8                " width of a tab character in spaces
set softtabstop=4            " defines number of spaces <Tab>/<BS> will insert/remove
set shiftwidth=4             " number of spaces to use for automatic indentation
set expandtab                " use spaces instead of tab characters; to insert real tab, use <C-v><Tab>
set autoindent               " fallback indenting, doesn't interfere with 'filetype indent'; see ':h C-indenting' for comparison

" --copying / pasting
" allow vim commands to copy to system clipboard (*)
" for X11:
"   + is the clipboard register (Ctrl-{c,v})
"   * is the selection register (middle click, Shift-Insert)
set clipboard=unnamed

" use clipboard register when supported (X11 only)
if has("unnamedplus")
    set clipboard+=unnamedplus
endif

" set paste to prevent unexpected code formatting when pasting text
" toggle paste and show current value ('pastetoggle' doesn't)
nnoremap <Leader>p :set paste! paste?<CR>
"set pastetoggle=<Leader>p

" Find using the word under the cursor using :Ack
nmap <leader>G :Ack! <c-r><c-w> ~/Dropbox/Dev/
let g:ignore_dirs = ['*.metadata']

" Ack {{
let g:ack_ignore = "--ignore " . join(g:ignore_dirs, " --ignore ")
if executable('ag')
   let g:ackprg = 'ag -i ' . g:ack_ignore
else
   let g:ackprg = 'ack -i ' . g:ack_ignore
endif
" }}

" CTRL-P {{
let s:ctrlp_ignore_dir_local = ''
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.hg$\|\.svn$' . s:ctrlp_ignore_dir_local,
      \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
let g:ctrlp_by_filename = 0
let g:ctrlp_match_window = 'results:80'

if executable('ag')
  let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
elseif executable('ack')
  let s:ctrlp_fallback = 'ack %s --nocolor -f'
else
  let s:ctrlp_fallback = 'find %s -type f'
endif
let s:ctrlp_grep_ignore = '-e node_modules -e jspm_packages -e graveyard'
let g:ctrlp_user_command = {
      \ 'types': {
      \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others | grep -v ' . s:ctrlp_grep_ignore ],
      \ 2: ['.hg', 'hg --cwd %s locate -I .'],
      \ },
      \ 'fallback': s:ctrlp_fallback,
      \ 'ignore': 1
      \ }
" }}

" buffexplorer {{
map <leader>be :BufExplorer<cr>
let g:bufExplorerSortBy='mru'
let g:bufExplorerReverseSort=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerSplitOutPathName=1
" }}

" Syntastic {{
let g:syntastic_check_on_open = 1
" }}
