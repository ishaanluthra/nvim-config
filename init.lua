require("config.lazy")
require("config.options")

vim.cmd("colorscheme kanagawa-dragon")

vim.opt.number = true
vim.opt.relativenumber = true


vim.opt.termguicolors = true
require("bufferline").setup{}

require("lazy").setup({
  {
    "Dan7h3x/signup.nvim",
    branch = "main",
    opts = {
          -- Your configuration options here
    },
    config = function(_,opts)
      require("signup").setup(opts)
    end
  }
})

local Terminal = require("toggleterm.terminal").Terminal

local float_term = Terminal:new({
  direction = "float",
  hidden = true,
})

-- Normal mode mapping
vim.keymap.set("n", "<C-t>", function()
  float_term:toggle()
end, { noremap = true, silent = true })

-- Terminal mode mapping
vim.keymap.set("t", "<C-t>", function()
  float_term:toggle()
end, { noremap = true, silent = true })


