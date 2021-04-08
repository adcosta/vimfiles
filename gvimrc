" colorscheme soda        " good for printing.... and working
" colorscheme playroom    " very good for printing... ALWAYS USE THIS TO PRINT
" ==> generate an HTML version using :TOhtml and then copy paste on browser
" colorscheme lightcolors " very good for working...
" colorscheme solarized    " very popular...
" colorscheme rdark    
colorscheme vimhut
" use :SCROLL to see all the colors in real usage
" colors for GVIM are in .gvimrc 
" colors for gvim are: 
" --> lightcolors, soda, github, playroom, mango, Tomorrow, python
" --> dejavu, eclipse, habilight, nuvola, scane, silent (?)
" colors for VIM are in .vimrc 
" colors for vim in terminal mode are: 
" ---> ir_black, " torte, spring, mushroom, solarized

" set guifont=Monospace\ 13,Courier\ 13

" added by A.Costa to really memorize last position on file (new way!)
" not really required, because now I have a plugin for that: restore_view
" au BufWinLeave * mkview
" au VimEnter * if argc() >0 | loadview | endif
set viewdir=~/.vim/gview " where to put backup files
" Be sure to also look at :mksession because it is even more powerful..
"set nolist  " no special chars on gvim :-)
