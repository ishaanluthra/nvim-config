return {
  "williamboman/mason.nvim",
  build = ":MasonUpdate", -- Optional: update registry on install
  config = function()
    require("mason").setup({
      ui = {
        border = "rounded",
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        },
      },
    })

    -- Optional: mason-lspconfig to auto-install LSP servers
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "pyright",
        "tsserver",
        "gopls",
        "html",
        "cssls",
        "jsonls",
      },
      automatic_installation = true,
    })
  end,
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
}

