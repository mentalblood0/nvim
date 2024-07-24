local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("n", "<CR>", "I<CR><ESC>ka", { desc = "Insert a new line inplace" })
keymap.set("n", "<leader><CR>", "<M-o>", { desc = "Insert a new line below" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>qq", "<cmd> qa <CR>", { desc = "Close neovim" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "<leader>w", "<cmd> w <CR>", { desc = "Write buffer" })
keymap.set("n", "J", "5j", { desc = "Move 5 lines down" })
keymap.set("n", "K", "5k", { desc = "Move 5 lines up" })
keymap.set("v", "p", "_dP", { desc = "Paste without yanking" })
keymap.set("n", ":", ":set nu<CR>:", { desc = "Toggle line numbers on command line mode enter" })
keymap.set("c", "<CR>", "<CR>:set nonu<CR>", { desc = "Toggle line numbers on command line mode exit" })
keymap.set("c", "<ESC>", "<ESC>:set nonu<CR>", { desc = "Toggle line numbers on command line mode exit" })
keymap.set("n", "G", "Gzz", { desc = "Go to the end of the file and center" })
keymap.set("n", "n", "nzz", { desc = "Go to next match and center" })
keymap.set("n", "N", "Nzz", { desc = "Go to previous match and center" })
