vim.g.mapleader = " "

vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- Center after moving half-page
vim.keymap.set('n', '<C-d>', '<C-d>zz', { silent = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { silent = true })

-- Center after searching
vim.keymap.set('n', 'n', 'nzzzv', { silent = true })
vim.keymap.set('n', 'N', 'Nzzzv', { silent = true })

-- Horizontal split (opens empty buffer below)
vim.keymap.set("n", "<leader>sh", ":split<CR>", { silent = true })
-- Vertical split (opens empty buffer to the right)
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { silent = true })

-- Horizontal terminal
vim.keymap.set("n", "<leader>th", ":split | terminal<CR>", { silent = true })
-- Vertical terminal
vim.keymap.set("n", "<leader>tv", ":vsplit | terminal<CR>", { silent = true })

-- Move between windows using Ctrl + h/j/k/l
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })

-- Close current window
vim.keymap.set("n", "<C-c>", ":close<CR>", { silent = true })

-- Terminal mode window navigation
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h", { silent = true })
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j", { silent = true })
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k", { silent = true })
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l", { silent = true })

-- In terminal mode, Ctrl-c closes the terminal window
vim.keymap.set("t", "<C-c>", "<C-\\><C-n>:close<CR>", { silent = true })
