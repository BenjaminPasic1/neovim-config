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
      vim.lsp.config(lsp, {
        capabilities = capabilities
      })
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
