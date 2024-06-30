local map = vim.keymap.set
-- whichkey
map('n', '<leader>wK', '<cmd>WhichKey <CR>', { desc = 'whichkey all keymaps' })
map('n', '<leader>wk', function()
  vim.cmd('WhichKey ' .. vim.fn.input 'WhichKey: ')
end, { desc = 'whichkey query lookup' })

