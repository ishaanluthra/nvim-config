require("config.lazy")
require("config.options")

vim.cmd("colorscheme habamax")
vim.opt.number = true
vim.opt.relativenumber = true


vim.opt.termguicolors = true
require("bufferline").setup{}

local Terminal = require("toggleterm.terminal").Terminal

local float_term = Terminal:new({
  direction = "tab",
  hidden = true,
})

-- Function to toggle the terminal
-- Normal mode mapping
vim.keymap.set("n", "<C-a>", function()
  float_term:toggle()
end, { noremap = true, silent = true })

-- Terminal mode mapping
vim.keymap.set("t", "<C-a>", function()
  float_term:toggle()
end, { noremap = true, silent = true })


