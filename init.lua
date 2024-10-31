---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
--
--
-- [Bob's Neovim config]
--
--
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

------------------------------------
--
-- [General Editor Configs]
--
------------------------------------

vim.g.mapleader = ' ' -- Set <space> as the leader key
vim.g.maplocalleader = ' '

vim.opt.mouse = 'a' -- Enable mouse mode
vim.opt.breakindent = true -- Enable break indent
vim.opt.undofile = true -- Save undo history
vim.opt.ignorecase = true -- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes' -- Keep signcolumn on by default
vim.opt.updatetime = 250 -- Decrease update time
vim.opt.timeoutlen = 300 -- Decrease mapped sequence wait time, Displays which-key popup sooner

vim.opt.splitright = true -- Configure how new splits should be opened
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

------------------------------------
--
-- [Appearance Config]
--
------------------------------------
vim.g.have_nerd_font = true -- Set to true if you have a Nerd Font installed and selected in the terminal
vim.opt.number = true -- Make line numbers default
vim.opt.relativenumber = true
vim.opt.showmode = false -- Don't show the mode, since it's already in the status line
vim.opt.inccommand = 'split' -- Preview substitutions live, as you type!
vim.opt.cursorline = true -- Show which line your cursor is on

vim.opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.
vim.g.floaterm_height = 0.4
vim.g.floaterm_position = 'bottomright'

------------------------------------
--
-- [Keymap Config]
--
------------------------------------
--  See `:help vim.keymap.set()`

vim.opt.hlsearch = true -- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

require 'mappings.general'
require 'mappings.barbar'
require 'mappings.blankline'
require 'mappings.lazygit'
require 'mappings.nvim-tree'
require 'mappings.nvim-tmux-navigator'
require 'mappings.telescope'
require 'mappings.which-key'

------------------------------------
--
-- [Basic Autocommands]
--
-------------------------------------
--  See `:help lua-guide-autocommands`

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require 'autocmds.general'
require 'autocmds.no-trailing-comments'
require 'autocmds.luasnip-fix'
require 'autocmds.clipboard'
require 'autocmds.yank-highlight'

------------------------------------
--
-- [Plugins]
--
------------------------------------
--  To check the current status of your plugins, run
--    :Lazy
--
--  To update plugins you can run
--    :Lazy update
--
require('lazy').setup({
  -- lsp and package managers
  -- require 'plugins.mason',
  require 'plugins.nvim-lspconfig',
  require 'plugins.nvim-treesitter',
  -- git
  require 'plugins.gitsigns',
  require 'plugins.lazygit',
  -- utility
  require 'plugins.barbar',
  require 'plugins.nvim-tree',
  require 'plugins.telescope',
  require 'plugins.harpoon',
  require 'plugins.leap',
  -- terminal
  require 'plugins.vim-floatterm',
  require 'plugins.vim-tmux-navigator',
  -- themes
  require 'themes.tokyonight',
  require 'themes.catppuccin',
  require 'themes.onedark',
  require 'plugins.alpha',
  -- editors
  require 'plugins.comment',
  require 'plugins.conform',
  require 'plugins.debug',
  require 'plugins.indent_line',
  require 'plugins.lint',
  require 'plugins.autopairs',
  require 'plugins.nvim-ts-autotag',
  require 'plugins.mini-nvim',
  require 'plugins.neogen',
  require 'plugins.nvim-cmp',
  require 'plugins.todo-comments',
  require 'plugins.vim-sleuth',
  require 'plugins.vimtex',
  require 'plugins.which-key',
  require 'plugins.ufo',
  require 'plugins.overseer',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

------------------------------------------------
--
-- Theme
--
------------------------------------------------
vim.cmd.colorscheme 'catppuccin'
vim.cmd.hi 'Comment gui=none'
-- vim.notify = require('notify')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
