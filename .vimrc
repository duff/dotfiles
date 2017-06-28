" ---------------------------------------------------------------------------
" Vundle
" ---------------------------------------------------------------------------
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'AndrewRadev/switch.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'duff/vim-trailing-whitespace'
Plugin 'duff/vim-scratch'
Plugin 'elixir-lang/vim-elixir'
Plugin 'kana/vim-textobj-user'
Plugin 'andyl/vim-textobj-elixir'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-ruby/vim-ruby'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-endwise'

call vundle#end()


" ---------------------------------------------------------------------------
" General
" ---------------------------------------------------------------------------
set nocompatible
runtime macros/matchit.vim
filetype plugin indent on
let mapleader = ","
set history=1000                              " lots of command line history
set autoread                                  " reload files changed outside of Vim
set autowrite                                 " some commands should cause an automatic write
set nrformats=                                " improves incrementing when there are leading 0's.
set linebreak                                 " wrapping preserves words.

" ----------------------------------------------------------------------------
"  UI
" ----------------------------------------------------------------------------
set ruler                             " show the cursor position all the time
set backspace=start,indent,eol        " allow backspacing over anything in insert mode
set wm=2                              " wrap margin on the right
set scrolloff=2                       " keep some context when scrolling
set nowrap                            " do not wrap lines
set antialias                         " of course
set synmaxcol=200                     " limit syntax highlighting for long lines

" ----------------------------------------------------------------------------
"  Visual cues
" ----------------------------------------------------------------------------
set laststatus=2                " always show the status line
set visualbell                  " quiet
set noerrorbells                " quiet
set showcmd                     " show size of visual selection
set wildmenu                    " show possible matches for command completions using tab
set wildmode=list:longest,full  " full list using common string. Then full complete.

" ----------------------------------------------------------------------------
"  Tabs
" ----------------------------------------------------------------------------
set tabstop=4
set softtabstop=2          " yep, two
set shiftwidth=2
set nosmarttab             " no tabs, thanks.
set autoindent             " automatically indent new lines
set expandtab              " expand tabs to spaces

" ----------------------------------------------------------------------------
"  Backups
" ----------------------------------------------------------------------------
set nobackup                           " do not keep backups after close
set nowritebackup                      " do not keep a backup while working
set noswapfile                         " don't keep swp files either
set backupdir=~/.vim/backups           " store backups under ~/.vim/backup
set backupcopy=yes                     " keep attributes of original file
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=~/.vim/tmp               " where to keep swp files

" ----------------------------------------------------------------------------
"  Searching
" ----------------------------------------------------------------------------
nnoremap / /\v
vnoremap / /\v
set ignorecase              " make searches case insensitive
set smartcase               " care about case sensitivity if there's a capital letter
set incsearch               " do incremental searching
set nohlsearch              " don't highlight searches


" ---------------------------------------------------------------------------
" Edit vimrc
" ---------------------------------------------------------------------------
nmap <leader>c :sp ~/.vimrc<CR><C-W>_
nmap <leader>C :source $MYVIMRC<CR>:source $MYGVIMRC<CR>:filetype detect<CR><leader>d<leader>d<C-L>:exe ":echo 'vimrc reloaded'"<CR>


" ----------------------------------------------------------------------------
"  NerdTree config
" ----------------------------------------------------------------------------
let NERDTreeWinSize=31                " how wide nerdtree ought to be
let NERDTreeMinimalUI=1               " don't need to the noise
let NERDTreeDirArrows=1               " prettier arrows


" ---------------------------------------------------------------------------
" Mappings
" ---------------------------------------------------------------------------

" --------------------------------------------------
" Show/hide nerdtree
" --------------------------------------------------
nnoremap <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

" --------------------------------------------------
" Highlight the current buffer in the nerdtree
" --------------------------------------------------
nnoremap <leader>n :NERDTreeFind<CR>


" --------------------------------------------------
" Move between windows
" --------------------------------------------------
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l

" --------------------------------------------------
" Make it easy to move to adjacent files in the dir
" --------------------------------------------------
nmap gj :NERDTreeFind<CR><C-j><Enter>
nmap gk :NERDTreeFind<CR><C-k><Enter>

" --------------------------------------------------
" Navigating search results
" --------------------------------------------------
nnoremap <leader>1 :cprevious <CR>
nnoremap <leader>2 :cnext <CR>

" --------------------------------------------------
" Space is much easier to press than %
" --------------------------------------------------
map <space> %

" --------------------------------------------------
" Speed up viewport scrolling
" --------------------------------------------------
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" --------------------------------------------------
" Shortcut to make splits
" --------------------------------------------------
nnoremap <leader>s :sp<cr><C-w>j
nnoremap <leader>v :vsp<cr><C-w>l

" --------------------------------------------------
" Resize windows
" --------------------------------------------------
nmap <C-Left> <C-W><<C-W><
nmap <C-Right> <C-W>><C-W>>
nmap <C-Up> <C-W>+<C-W>+
nmap <C-Down> <C-W>-<C-W>-

" --------------------------------------------------
" Emacs bindings in command line mode
" --------------------------------------------------
cnoremap <c-a> <home>
cnoremap <c-e> <end>

" --------------------------------------------------
" Add the dir of the current file to the command
" --------------------------------------------------
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" --------------------------------------------------
" Ctrlp plugin
" --------------------------------------------------
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>F :CtrlPClearCache<CR>:CtrlP<CR>

" --------------------------------------------------
" Session shortcuts
" --------------------------------------------------
nnoremap <leader>p :OpenSession<space>

" --------------------------------------------------
" Normal mode shortcuts
" --------------------------------------------------
nmap <leader><Enter> [<space>
nnoremap <leader><space> i<space><Esc>

" --------------------------------------------------
" Easier to get to the end of the line
" --------------------------------------------------
noremap gl g_

" --------------------------------------------------
" Easier to get to the first non-blank character of the line
" --------------------------------------------------
noremap gh ^

" --------------------------------------------------
" Ctags shortcuts
" --------------------------------------------------
nmap <C-\> <C-]>
nmap g<C-\> g]

" --------------------------------------------------
" Auto complete shortcut
" --------------------------------------------------
imap <S-space> <C-n>

" --------------------------------------------------
" Switch it up with the switch plugin
" --------------------------------------------------
nnoremap <S-space> :Switch<CR>

" --------------------------------------------------
" Hash syntax shortcut
" --------------------------------------------------
inoremap <C-l> <space>=><space>

" --------------------------------------------------
" Allow multiple pastes of the same content when pasting in visual mode.
" --------------------------------------------------
vnoremap p pgvy

" --------------------------------------------------
" Remove trailing whitespace
" --------------------------------------------------
nnoremap <leader>h :FixWhitespace<cr>

" --------------------------------------------------
" Save a few keystrokes
" --------------------------------------------------
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>

" --------------------------------------------------
" I often use a Scratch buffer
" --------------------------------------------------
nnoremap <leader>S :Scratch<CR>

" --------------------------------------------------
" Visually select the text that was last edited/pasted
" --------------------------------------------------
nmap gV `[v`]

" Bubble lines
nmap ˚ [e
nmap ∆ ]e
vmap ˚ [egv
vmap ∆ ]egv

" --------------------------------------------------
" Switch between the last 2 files
" --------------------------------------------------
nnoremap go <c-^>

" --------------------------------------------------
" Start a :%s with the visual selection.
" --------------------------------------------------
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>




" ---------------------------------------------------------------------------
"  Misc stuff
" ---------------------------------------------------------------------------


" --------------------------------------------------
" Yank to the * register (system clipboard) to easily
" paste into other apps.
" --------------------------------------------------
set clipboard+=unnamed

" --------------------------------------------------
"  Colors/Theme
" --------------------------------------------------
syntax on


" --------------------------------------------------
"  Ignored wildcards
" --------------------------------------------------
set wildignore+=*/.git/*,*/deps/*,*/_build/*,*/vendor/*

" --------------------------------------------------
"  CtrlP customization
" --------------------------------------------------
let g:ctrlp_match_window = 'order:ttb,max:20'
let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode = 'ra'


" --------------------------------------------------
" Persistent undo
" --------------------------------------------------
set undofile
set undodir=~/.vim/.undo

" --------------------------------------------------
"  Let me leave buffers even when they're changed.
" --------------------------------------------------
set hidden

" --------------------------------------------------
" Write all named, changed buffers when Vim loses focus
" --------------------------------------------------
au FocusLost * :wall

" --------------------------------------------------
" Insert mode comletion options
" --------------------------------------------------
set completeopt=longest,menu,preview
set complete=.

" --------------------------------------------------
" Improve navigation of the popup menu for completion.
" --------------------------------------------------
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'


" --------------------------------------------------
"  Jump to last saved position of buffer when re-opening
" --------------------------------------------------
autocmd BufReadPost *
  \ if !(bufname("%") =~ '\(COMMIT_EDITMSG\)') && line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" --------------------------------------------------
"  Omnicomplete
" --------------------------------------------------
set ofu=syntaxcomplete#Complete


" --------------------------------------------------
"  Open url on current line in browser
" --------------------------------------------------
function! HandleURI()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;:]*')
  echo s:uri
  if s:uri != ""
	  exec "!open \"" . s:uri . "\""
  else
	  echo "No URI found in line."
  endif
endfunction
nmap <Leader>b :call HandleURI()<CR>

" --------------------------------------------------
"  Vim-session customization
" --------------------------------------------------
let g:session_autosave = 'yes'
let g:session_lock_enabled = 0
let g:session_autosave_silent = 1
let g:session_autosave_periodic = 2

