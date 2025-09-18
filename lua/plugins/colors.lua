return {
  {
    "catppuccin/nvim",
    name = "catppuccin", -- optional but nice for clarity
    lazy = false,        -- load immediately
    priority = 1000,     -- make sure it loads before other plugins
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- latte, frappe, macchiato, mocha
        transparent_background = false,
        integrations = {
          treesitter = true,
          nvimtree = true,
          telescope = true,
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}

