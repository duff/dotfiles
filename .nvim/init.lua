
vim.opt.number = true
vim.opt.hlsearch = false
vim.opt.wrap = false
vim.opt.tabstop = 4

vim.wo.fillchars='eob: '                 -- hide the ~ for blank lines

-- Mappings
vim.g.mapleader = ','
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')

vim.keymap.set('n', '<leader>c', ':sp $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>C', ':source $MYVIMRC<CR>:exe "echo \'init.lua reloaded\'"<CR>')

vim.cmd('colorscheme base16-default-dark')
