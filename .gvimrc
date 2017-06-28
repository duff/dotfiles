
" --------------------------------------------------
" Disable scrollbars, etc
" --------------------------------------------------
set guioptions=eg

set number                " show line numbers

" --------------------------------------------------
" Basic font, colors
" --------------------------------------------------

set background=dark
colorscheme base16-custom
set guifont=Hack:h12

" set guifont=Bitstream\ Vera\ Sans\ Mono:h12
" set guifont=Monaco:h11
" set guifont=Inconsolata:h12
" set guifont=Inconsolata-dz:h11


" --------------------------------------------------
" Perfectly black background
" --------------------------------------------------
highlight Normal guibg=Black


" --------------------------------------------------
" Line number formatting
" --------------------------------------------------
highlight LineNr guibg=#161719
highlight LineNr guifg=#787C81
set numberwidth=3


" --------------------------------------------------
" Matching paren colors
" --------------------------------------------------
highlight MatchParen guibg=White guifg=Red


" --------------------------------------------------
" No blinky
" --------------------------------------------------
set guicursor+=a:blinkon0

" --------------------------------------------------
" Hide the ~ symbols where there's no text
" --------------------------------------------------
highlight NonText guibg=Black guifg=Black

