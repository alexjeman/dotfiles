local M = {}

local override = require "custom.override"

M.plugins = {
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
      statusline = {
        separator_style = "arrow",
      },
   },
   override = {
      ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
      ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
   },
   user = require "custom.plugins"
}

M.ui = {
   theme = "chadracula",
}

return M
