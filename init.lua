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


