vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Select All
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save file
keymap.set({ "n", "i" }, "<C-s>", "<cmd> w <CR>")

-- Neo-tree
keymap.set("n", "<leader>e", "<cmd> Neotree toggle <CR>")

-- Tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Lazy
keymap.set("n", "<leader>l", "<cmd> Lazy <CR>")

-- New file
keymap.set("n", "<leader>nf", "<cmd> enew <CR>")

-- better indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Move window
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-l>", "<C-w>l")

-- Navigate with insert mode
-- Goto begining and end
keymap.set("i", "<C-b>", "<ESC>^i")
keymap.set("i", "<C-e>", "<End>")

-- navigate
keymap.set("i", "<C-h>", "<Left>")
keymap.set("i", "<C-l>", "<Right>")
keymap.set("i", "<C-j>", "<Down>")
keymap.set("i", "<C-k>", "<Up>")

-- clear highlight
keymap.set("n", "<Esc>", "<cmd> noh <CR>")
