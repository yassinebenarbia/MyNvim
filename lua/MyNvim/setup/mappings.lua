---@breif [[
--- Prymodial mappings, no other mappings are defined
--- These mappings should not necessere any of the plugins
---@breif ]]
---@Note [[
--- planning to move them to the general mappings module, as it will be eaiser to manage
--- should think about hte decession
---@Note ]]

-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-- window resize
vim.keymap.set("n", "<A-H>", ":vertical resize -5<CR>", opts)
vim.keymap.set("n", "<A-L>", ":vertical resize +5<CR>", opts)
vim.keymap.set("n", "<A-K>", ":horizontal resize -5<CR>", opts)
vim.keymap.set("n", "<A-J>", ":horizontal resize +5<CR>", opts)

-- window navigation
vim.keymap.set('n', '<A-h>', '<C-w>h', opts)
vim.keymap.set('n', '<A-j>', '<C-w>j', opts)
vim.keymap.set('n', '<A-k>', '<C-w>k', opts)
vim.keymap.set('n', '<A-l>', '<C-w>l', opts)

-- Explore
-- lhs vertical split Explore
vim.keymap.set('n', '<C-n>', ':Lexplore <CR>', opts)
-- horizontal down slplit Explore
vim.keymap.set('n', '<C-m>', ':Hexplore <CR>', opts)

-- spelling
vim.keymap.set("n", "<C-s>", ":set spell!<CR>", opts)
