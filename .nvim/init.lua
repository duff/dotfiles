
vim.o.number = true
vim.o.hlsearch = false
vim.o.wrap = false

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true                 -- expand tabs to spaces

vim.o.scrolloff = 2                    -- keep some context when scrolling
vim.o.sidescrolloff = 5                -- keep some context when scrolling side to side

vim.o.fillchars='eob: '                -- hide the ~ for blank lines

vim.o.backup = false                   -- don't keep backups after close
vim.o.writebackup = false              -- don't keep backups while working
vim.o.swapfile = false                 -- don't need swp files

vim.o.ignorecase = true                -- make searces case insensitive
vim.o.smartcase = true                 -- care about case sensitivity 

vim.opt.completeopt = {'longest', 'menu', 'preview'}
vim.opt.complete = {'.'}

vim.opt.grepprg = 'rg --vimgrep --follow --color=never'

-- Mappings
vim.g.mapleader = ','
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')

vim.keymap.set('n', '<leader>c', ':sp $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>C', ':source $MYVIMRC<CR>:exe "echo \'init.lua reloaded\'"<CR>')

vim.cmd('colorscheme base16-default-dark')
