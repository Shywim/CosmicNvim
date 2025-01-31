-- Override Cosmic configuration options

--[[
-- You can require null-ls if needed
-- local null_ls = require('null-ls')

local config = {}

-- auto session settings
-- see Cosmic defaults: core/session/init.lua
config.session = {}

-- statusline settings
config.statusline = {
  main_icon = '★',
}

-- see Cosmic defaults: core/treesitter/init.lua
config.treesitter = {}

-- lsp Settings
config.lsp = {

  -- true/false or table of filetypes {'.ts', '.js',}
  format_on_save = true,

  -- set to false to disable rename notification
  rename_notification = false,

  -- see :h vim.diagnostic.config for all diagnostic configuration options
  -- see Cosmic defaults: lsp/diagnostics.lua
  diagnostic = {},

  servers = {

    -- enable/disable server + formatting
    eslint = false,

    -- enable non-default servers, use default lsp config
    -- check here for configs that will be used by default: https://github.com/williamboman/nvim-lsp-installer/tree/main/lua/nvim-lsp-installer/servers
    rust_analyzer = true,

    tsserver = {
      -- disable formatting (defaults to true)
      format = false,
      -- OR add/override server options
      opts = {
        on_attach = function(client, bufnr) end,
        flags = {
          debounce_text_changes = 150,
        }
      }
    },

    -- See Cosmic defaults lsp/providers/null_ls.lua
    null_ls = {}
  },

  -- See Cosmic defaults lsp/providers/tsserver.lua
  ts_utils = {}
}

return config

]]
