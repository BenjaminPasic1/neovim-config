return {
    {
        "neovim/nvim-lspconfig",
	dependeincies = {
	    "saghen/blink.cmp"
	},

	-- Define servers here.
	opts = {
	    servers = {
		lua_ls = {},
		clangd = {}
	    }
	},

        config = function(_, opts)
	    local lspconfig = require("lspconfig")
	    for server, config in pairs(opts.servers) do
		--merge blink.cmp capabilities with LSP
		config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
		lspconfig[server].setup(config)
	    end
        end
    }
}
