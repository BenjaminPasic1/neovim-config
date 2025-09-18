return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      -- Map filetypes to formatters
      formatters_by_ft = {
        lua = { "stylua" },
        c   = { "clang-format" },
        cpp = { "clang-format" },
      },

      -- Run formatters sequentially
      format_on_save = {
        lsp_fallback = true, -- fallback to LSP if no formatter found
        timeout_ms = 500,
      },
    })
  end,
}
