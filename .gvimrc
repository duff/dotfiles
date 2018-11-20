
" --------------------------------------------------
" Disable scrollbars, etc
" --------------------------------------------------
set guioptions=eg

" --------------------------------------------------
" Basic font, colors
" --------------------------------------------------
set guifont=Hack:h12

" --------------------------------------------------
" Perfectly black background
" --------------------------------------------------
highlight Normal guibg=Black

" --------------------------------------------------
" Hide the ~ symbols where there's no text
" --------------------------------------------------
highlight NonText guibg=Black guifg=Black

" --------------------------------------------------
" Line number formatting
" --------------------------------------------------
highlight LineNr guibg=#2D2A30
highlight LineNr guifg=#787C81
set numberwidth=3

" --------------------------------------------------
" No blinky
" --------------------------------------------------
set guicursor+=a:blinkon0
