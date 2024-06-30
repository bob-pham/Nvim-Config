local map = vim.keymap.set
map('i', '<C-b>', '<ESC>^i', { desc = 'move beginning of line' })
map('i', '<C-e>', '<End>', { desc = 'move end of line' })
map('i', '<C-h>', '<Left>', { desc = 'move left' })
map('i', '<C-l>', '<Right>', { desc = 'move right' })
map('i', '<C-j>', '<Down>', { desc = 'move down' })
map('i', '<C-k>', '<Up>', { desc = 'move up' })

map('n', '<Esc>', '<cmd>noh<CR>', { desc = 'general clear highlights' })

map('n', '<C-h>', '<C-w>h', { desc = 'switch window left' })
map('n', '<C-l>', '<C-w>l', { desc = 'switch window right' })
map('n', '<C-j>', '<C-w>j', { desc = 'switch window down' })
map('n', '<C-k>', '<C-w>k', { desc = 'switch window up' })

map('n', '<C-s>', '<cmd>w<CR>', { desc = 'file save' })
map('n', '<C-c>', '<cmd>%y+<CR>', { desc = 'file copy whole' })

map('n', '<leader>n', '<cmd>set nu!<CR>', { desc = 'toggle line number' })
map('n', '<leader>rn', '<cmd>set rnu!<CR>', { desc = 'toggle relative number' })
map('n', '<leader>ch', '<cmd>NvCheatsheet<CR>', { desc = 'toggle nvcheatsheet' })

-- map("n", "<leader>fm", function()
-- require("conform").format { lsp_fallback = true }
-- end, { desc = "format files" })

-- global lsp mappings
map('n', '<leader>ds', vim.diagnostic.setloclist, { desc = 'lsp diagnostic loclist' })

-- Comment
map('n', '<leader>/', 'gcc', { desc = 'comment toggle', remap = true })
map('v', '<leader>/', 'gc', { desc = 'comment toggle', remap = true })

map('n', ';', ':', { desc = 'CMD enter command mode' })
map('i', 'jk', '<ESC>')
