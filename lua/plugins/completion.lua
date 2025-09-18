return {
    {
	'saghen/blink.cmp',
	dependencies = { 'rafamadriz/friendly-snippets' },

	version = '1.*',
	opts = {
	    -- All presets have the following mappings:
	    -- C-space: Open menu or open docs if already open
	    -- C-n/C-p or Up/Down: Select next/previous item
	    -- C-e: Hide menu
	    -- C-k: Toggle signature help (if signature.enabled = true)
	    --
	    -- See :h blink-cmp-config-keymap for defining your own keymap
	    keymap = { preset = "super-tab" },

	    appearance = {
		nerd_font_variant = 'mono'
	    },

	    -- (Default) Only show the documentation popup when manually triggered
	    completion = { 
	    	documentation = { enabled = true },
		signature_help = { enabled = true }
	    },
	    fuzzy = { implementation = "prefer_rust_with_warning" }
	},
    }
}
