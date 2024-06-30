local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<Tab>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<Tab-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<Tab->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<Tab-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<Tab-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<Tab-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<Tab-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<Tab-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<Tab-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<Tab-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<Tab-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<Tab-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<Tab-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<Tab-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<leader>x', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
