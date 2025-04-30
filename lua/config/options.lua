
vim.g.mapleader = " "


vim.keymap.set("n", "<leader>ee", vim.cmd.Neotree)
vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files)

vim.keymap.set("n", "<S-Tab>", vim.cmd.bprev)
vim.keymap.set("n", "<C-Tab>", vim.cmd.bdelete)
