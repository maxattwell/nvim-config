local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- ======== NORMAL ========================
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Better vertical navigation
keymap("n", "<C-j>", "<C-d>zz", opts)
keymap("n", "<C-k>", "<C-u>zz", opts)

-- Fast macro
keymap("n", "Q", "@q", opts)

-- Shortcuts
keymap("n", "<leader>gg", ":LazyGit <cr>", opts)

-- ======== INSERT ========================
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- ======== VISUAL ========================
-- Better vertical navigation
keymap("v", "<C-j>", "<C-d>zz", opts)
keymap("v", "<C-k>", "<C-u>zz", opts)
