-- plugins/lspconfig.lua
return {
  'neovim/nvim-lspconfig',
  dependencies = {
    "saghen/blink.cmp",
  },
  config = function()
    local capabilities = require('blink.cmp').get_lsp_capabilities()
    local lsps = {
      "clangd",
      "lua_ls"
    }

    for _, lsp in ipairs(lsps) do
      local config = {
        capabilities = capabilities,
      }

      -- Extra settings just for lua_ls
      if lsp == "lua_ls" then
        config.settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }, -- make `vim` recognized as a global
            },
          },
        }
      end

      vim.lsp.config(lsp, config)
      vim.lsp.enable(lsp)
    end

    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client then
          -- LSP keymaps
          vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { buffer = ev.buf })
        end
      end,
    })
  end
}
