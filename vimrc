" Plug vim pluin Manager {
   " must be the first block!!
   " Change frrom Vundle to Plug on jun.2017 (not sure if it was a good decision). yes it is!

   set nocompatible              " be iMproved, required
   set t_Co=256                  " Full 256 color support for VIM and/or Xterm
   call plug#begin('~/.vim/plugged')

   " just search for the Plug with :PluginSearch and put its name here
   " them run :PlugInstall and that's it! Ii works also with github names... 
   Plug 'vim-scripts/L9'          " it's a standard vim library other plugins may use.
   Plug 'rizzatti/dash.vim'       " will search for terms using the excellent Dash.app 
   " Plug 'SirVer/ultisnips'        " Handle snipets. Track the engine.
   Plug 'honza/vim-snippets'      " Snippets are separated from engine.
   Plug 'jlanzarotta/bufexplorer' " quickly and easily switch between buffers 
   Plug 'ctrlpvim/ctrlp.vim'      "  Full path fuzzy file finder for Vim
"   Plug 'wincent/command-t'       "  find and open files...  // I am using old Ruby version
"   I am not using NERDTree... use netrw (:Lex) or ctrlp
   Plug 'junegunn/vim-easy-align' " simple, easy-to-use Vim alignment plugin.
   Plug 'vim-airline/vim-airline' " a new status line.... 
   Plug 'google/vim-searchindex'  " count ocorrences in a find  (google plugins)
   Plug 'vim-scripts/restore_view.vim'  " a more sofisticated way to keep last pos in file
   Plug 'vim-scripts/MPage'   " show a file in multiple windows
   Plug 'will133/vim-dirdiff'     " vimdiff directories... does it work?
   Plug 'lifepillar/vim-cheat40'  " vim cheat sheet ... 
   Plug 'Rykka/riv.vim'           " Riv is a vim plugin for taking notes with reStructuredText 
   Plug 'johngrib/vim-game-snake' " snake game for key movement
   Plug 'nathanalderson/yang.vim' " vim syntax for YANG modules
   Plug 'morhetz/gruvbox'         " vim color scheme used in SpaceVim...
   Plug 'cespare/vim-toml'        " Vim syntax for TOML.
   Plug 'zxqfl/tabnine-vim'       " Tabnine is a GPT-2 based autocomplete for all languages
   Plug 'pearofducks/ansible-vim' " syntax plugin for YAML playbooks Ansible 2.0
   "
   " Keep Plug commands between plug#begin/end.
   call plug#end()            " required
   "
   " Put your non-Plug stuff after this line
" }
 
" -----------------------------------------------------------------------------------
" Starting real vimrc things.... after loading Plugs with Plug.vim 
" -----------------------------------------------------------------------------------
 
" Modeline and Notes {
"   vim: set foldmarker={,} foldlevel=0 spell:
"   
"   Got tips from many places, like https://www.robertmelton.com/
"
"   Modified for my personal use: Antonio Costa <costa@di.uminho.pt>
"   http://marco.uminho.pt/~costa
"
"   colors for gvim are placed on .gvimrc  
"   use gvim for :TOhtml
" }

" Basics {
    set nocompatible " explicitly get out of vi-compatible mode
    " set background=light
    set background=dark
    " added by A.Costa to really memorize last position on file (new way!)
    " not really required, because now I have a plugin for that: restore_view
    " au BufWinLeave ?* mkview
    " au BufWinEnter ?* silent loadview
	" " au VimEnter * if argc() >0 | loadview | endif
    set viewdir=~/.vim/view " where to put backup files
    " Be sure to also look at :mksession because it is even more powerful...
    set undodir=~/.vim/undodir  " where to store undo persistent changes
    set undofile
" }

" General {
    " para poder editar tanto  UF-8 como outros formatos... "
    set fileencodings=utf-8,latin1,iso-8859-15
    set backspace=indent,eol,start " make backspace a more flexible
    set backup " make backup files
    set backupdir=~/.vim/backup " where to put backup files
    set directory=~/.vim/tmp " directory to place swap files in
    set fileformats=unix,mac,dos " support all three, in this order
    set noerrorbells " don't make noise
    set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
    "             | | | | | | | | |
    "             | | | | | | | | +-- "]" Insert and Replace
    "             | | | | | | | +-- "[" Insert and Replace
    "             | | | | | | +-- "~" Normal
    "             | | | | | +-- <Right> Normal and Visual
    "             | | | | +-- <Left> Normal and Visual
    "             | | | +-- "l" Normal and Visual (not recommended)
    "             | | +-- "h" Normal and Visual (not recommended)
    "             | +-- <Space> Normal and Visual
    "             +-- <BS> Normal and Visual
" }

" Vim UI {
    set history=80      " keep 50 lines of command line history
    set showcmd		" display incomplete commands
    set incsearch	" do incremental searching
    set hlsearch
    set scrolloff=2 " keep cursor away from top or bottom of screen
    " colorscheme ir_black 
    " This one is great, the one I am using by default.. should i use gruvbox?
    colorscheme mushroom 
    " colorscheme gruvbox
    " colors for vim in terminal mode are: 
    " ---> ir_black, " torte, spring, mushroom, solarized
    " colors for GVIM are in .gvimrc 
    " colors for gvim are: 
    " --> lightcolors, soda, github. playroom, mango, Tomorrow, python
    set laststatus=2 " always show the status line
    set report=0 " tell us when anything is changed via :...
    set ruler " Always show current positions along the bottom
    " my version of statusline... with formats 
    set statusline=%n:%-20f%m%r%h%w\ %y[%{&ff},%{&fenc}=>%{&enc}]\ [%l/%L,%v][%p%%]
    "set statusline=%-15f%m%r%h%w\ [FORMAT=%{&ff},%{&fenc}->%{&enc}]\ [TYPE=%Y]\ [ASCII=\%04.8b]\ [HEX=\%04.4B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
    "set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
    "                | | | | |  |   |      |  |     |    |
    "                | | | | |  |   |      |  |     |    + current
    "                | | | | |  |   |      |  |     |       column
    "                | | | | |  |   |      |  |     +-- current line
    "                | | | | |  |   |      |  +-- current % into file
    "                | | | | |  |   |      +-- current syntax in
    "                | | | | |  |   |          square brackets
    "                | | | | |  |   +-- current fileformat
    "                | | | | |  +-- number of lines
    "                | | | | +-- preview flag in square brackets
    "                | | | +-- help flag in square brackets
    "                | | +-- readonly flag in square brackets
    "                | +-- rodified flag in square brackets
    "                +-- full path to file in the buffer
    "
    " Using airline plug in for statusline... (should I use this?)
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_section_y='[%{&ff}]%{&fenc}=>%{&enc}'
    let g:airline_section_z = airline#section#create(['windowswap', '%3p%%(%L)', 'linenr', ':%3v'])
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '◀'
	"call togglebg#map("")
" }

" Text Formatting/Layout {
	set expandtab " no real tabs please!
	set formatoptions=rq " Automatically insert comment leader on return,
                         " and let gq format comments
	set softtabstop=4 " when hitting tab or backspace, how many spaces
                      "should a tab be (see expandtab)
	set tabstop=4 " real tabs should be 8, and they will show with
                  " set list on
	set shiftwidth=4
	set number
	" show invisible chars (like in Sublime)
	" set nolist
	set list
	set listchars=tab:▸\ ,eol:¬
	set showbreak=↪\ 
	set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
	" vou retirar para ja esta coisa dos carateres especiais!... 
	"set nolist
	set list
	"not ready for this plugin yet :-((((
	" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
	"vmap <Enter> <Plug>(EasyAlign)
	" Start interactive EasyAlign for a motion/text object (e.g. gaip)
	"nmap ga <Plug>(EasyAlign)
	" -- handle indentation (01.01.2016)
	set autoindent
	set textwidth=80
	"Sets in-line spellchecking
	" Set local language 
	" use :WP or :WPE (see Helping functions below)
	" setlocal spell spelllang=pt,en
" }

" Helping functions... {
   func! WordProcessorMode() 
      setlocal textwidth=80
      setlocal smartindent
      setlocal spell spelllang=pt
   endfu
   com! WP call WordProcessorMode()

   func! WordProcessorMode2() 
     setlocal formatoptions=1 
     setlocal noexpandtab 
     map j gj 
     map k gk
     setlocal spell spelllang=en
     "set thesaurus+=/Users/sbrown/.vim/thesaurus/mthesaur.txt
     set complete+=s
     set formatprg=par
     setlocal wrap 
     setlocal linebreak 
   endfu 
   com! WPE call WordProcessorMode2()
" }

