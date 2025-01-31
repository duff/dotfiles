local bind = vim.keymap.set
local cmd = vim.cmd
local opt = vim.opt
local remap = { remap = true }
local silent = { silent = true }

opt.number = true
opt.hlsearch = false
opt.wrap = false

-- tab config
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- add scrolling context
opt.scrolloff = 2
opt.sidescrolloff = 5

-- backups and swp files
opt.backup = false                   -- don't keep backups after close
opt.writebackup = false              -- don't keep backups while working
opt.swapfile = false                 -- don't need swp files
opt.hidden = true                    -- let me leave buffers if they're unchanged

-- search config
opt.ignorecase = true                -- make searces case insensitive
opt.smartcase = true                 -- care about case sensitivity
opt.clipboard:append('unnamed')      -- Yank to the * register (system clipboard) to easily paste into other apps.

-- completion config
opt.completeopt = {'longest', 'menu', 'preview'}
opt.complete = {'.'}

opt.fillchars='eob: '                -- hide the ~ for blank lines
opt.cmdheight = 2                    -- improve display of error messages
opt.history = 1000                   -- lots of command line history
opt.hidden = true                    -- enable background buffers
opt.autoread = true                  -- reload files changed outside of vim
opt.autowrite = true                 -- some commands ought to cause an automatic write
opt.autoindent = true                -- automatically indent new lines

-- persistent undo
opt.undofile = true
opt.undodir = vim.fn.stdpath("data") .. '/undo'

opt.completeopt = 'longest,menu,preview'
opt.complete = '.'

-- disable netrw per the suggestion of nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

cmd('autocmd FocusLost,WinLeave,TabLeave * wa') -- write all named, changed buffers when vim loses focus
cmd('colorscheme base16-default-dark')
cmd('highlight Normal guibg=#000000')  -- Set background color to true black

-- Add filetype detection for .usx files
cmd([[
  autocmd BufRead,BufNewFile *.usx set filetype=xml
]])

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'duff/vim-trailing-whitespace'
  use 'duff/vim-commaobject'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-pack/nvim-spectre'
  use 'nvim-tree/nvim-tree.lua'
  use 'Shatur/neovim-session-manager'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-ui-select.nvim'
  use 'mhinz/vim-mix-format'
  use 'tpope/vim-unimpaired'
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-endwise'
  use 'tpope/vim-ragtag'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-repeat'
  use 'github/copilot.vim'
  use 'CopilotC-Nvim/CopilotChat.nvim'

  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'hrsh7th/nvim-cmp'
  use 'kana/vim-textobj-user'
  use 'kana/vim-textobj-entire'
end)


-- Mappings
vim.g.mapleader = ','

bind('n', '<leader>w', ':w<CR>')
bind('n', '<leader>q', ':q<CR>')
bind('n', '<leader>x', ':x<CR>')
bind('n', '<leader>h', ':FixWhitespace<CR>')
bind('n', '<space>', '%', remap)

bind('n', '<leader>c', ':sp $MYVIMRC<CR>')
bind('n', '<leader>C', ':source $MYVIMRC<CR>:exe "echo \'init.lua reloaded\'"<CR>')

-- Move between windows
bind('n', '<C-J>', '<C-w>j')
bind('n', '<C-K>', '<C-w>k')
bind('n', '<C-H>', '<C-w>h')
bind('n', '<C-L>', '<C-w>l')

-- Make splits
bind('n', '<leader>s', ':sp<cr><C-w>j')
bind('n', '<leader>v', ':vsp<cr><C-w>l')

-- Spectre
bind('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>')

-- Normal mode shortcuts
bind('n', '<leader><Enter>', 'O<Esc>j')
bind('n', '<leader><space>', 'i<space><Esc>')

-- Nvim tree config
bind('n', '<leader>n', ':NvimTreeFindFile<CR>')
bind('n', '<leader>d', ':NvimTreeToggle<CR>')

-- Telescope config
local builtin = require('telescope.builtin')
bind('n', '<leader>ff', builtin.find_files, {})
bind('n', '<leader>fg', builtin.live_grep, {})
bind('n', '<leader>fh', builtin.help_tags, {})
bind('n', '<leader>fw', builtin.grep_string, {})
bind('n', '<leader>ft', builtin.treesitter, {})
bind('n', '<leader>fs', ':SessionManager load_session<CR>')

-- Navigating the quickfix window
bind('n', '<leader>1', ':cprevious <CR>')
bind('n', '<leader>2', ':cnext <CR>')

-- Easier to get to beginning/end of line
bind('', 'gl', 'g_')
bind('', 'gh', '^')

-- bubble lines
bind('n', '<M-o>ptionk', '[e', remap)
bind('n', '<M-o>ptionj', ']e', remap)
bind('v', '<M-o>ptionk', '[egv', remap)
bind('v', '<M-o>ptionj', ']egv', remap)

-- Elixir shortcuts
bind('n', '<leader>o', [[:w<CR>:MixFormat<CR>:exe "echo 'Format Complete'"<CR>]])

-- auto complete shortcuts
bind('i', '<C-space>', '<C-n>')
bind('i', '<S-space>', '<C-n>')

-- resize windows
bind('n', '<C-Left>', '<C-W><<C-W><')
bind('n', '<C-Right>', '<C-W>><C-W>>')
bind('n', '<C-Up>', '<C-W>+<C-W>+')
bind('n', '<C-Down>', '<C-W>-<C-W>-')

-- Copilot config
vim.g.copilot_enabled = false
vim.g.copilot_no_tab_map = true

bind('i', '<S-Space>', '<Plug>(copilot-suggest)', silent)
bind('i', '<S-CR>', 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false })
bind('i', '<Tab>', '<Plug>(copilot-next)', silent)


-- CopilotChat config
bind('n', '<leader>ccq', function()
  local input = vim.fn.input("Quick Chat: ")
  if input ~= "" then
    require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
  end
end, { desc = "CopilotChat - Quick chat" })

require("CopilotChat").setup {
  mappings = {
    reset = {
      normal = '',
      insert = '',
    },
    toggle_sticky = {
      normal = '',
    },
  },
}

require('session_manager').setup({ autoload_mode = require('session_manager.config').AutoloadMode.Disabled })
require("telescope").load_extension("ui-select")

require('nvim-treesitter.configs').setup {
  -- ensure_installed = "all",

  ensure_installed = { "angular", "awk", "bash", "c", "c_sharp", "clojure", "cmake", "comment", "commonlisp", "cpp", "css", "csv", "diff", "eex", "elixir", "elm", "erlang", "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore", "go", "graphql", "haskell", "haskell_persistent", "heex", "html", "http", "ini", "java", "javascript", "json", "json5", "julia", "latex", "lua", "luadoc", "luau", "make", "markdown", "markdown_inline", "pascal", "passwd", "pem", "perl", "php", "php_only", "phpdoc", "python", "r", "racket", "regex", "ruby", "rust", "scala", "scheme", "scss", "sql", "ssh_config", "swift", "vim", "vimdoc", "xml", "yaml" },
  sync_install = false,

  highlight = {
    enable = true,
  },

  indent = {
    enable = true
  }
}

require("nvim-tree").setup({
  -- ensure it reflects the right parent directory
  respect_buf_cwd = true,

  view = {
    adaptive_size = true,
    -- mappings = {
    --   list = {
    --     { key = "u", action = "dir_up" },
    --     { key = "C", action = "cd" },
    --   },
    -- },
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false
      },
    },
  },
  renderer = {
    icons = {
      show = {
        file = false,
        folder = false,
        git = false
      }
    }
  },
})

require('telescope').setup({
  defaults = {
    file_ignore_patterns = { "^.git/" },
    vimgrep_arguments = { "rg", "--color=never", "--no-heading", "--with-filename", "--line-number", "--column", "--smart-case", "--hidden" },
  },
  pickers = {
    find_files = {
      hidden = true
    },
  }
})

require('spectre').setup({
  replace_engine = {
    sed = {
      cmd = "sed",
      args = { "-i", "" },
    },
  },
})

vim.diagnostic.config({
  virtual_text = false,
  signs = false,
  underline = false
})

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "elixirls" }
})

if not vim.g.lsp_setup_done then
  vim.g.lsp_setup_done = true -- Mark setup as done

  local lspconfig = require("lspconfig")
  local on_attach = function(_, bufnr)
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  end

  require("mason-lspconfig").setup_handlers({
    function(server_name)
      require("lspconfig")[server_name].setup({
        on_attach = on_attach,
        settings = {
          elixirLS = {
            dialyzerEnabled = false,
            fetchDeps = false,
          },
        },
        env = { ELS_MODE = "language_server" },
      })
    end,
  })
end
