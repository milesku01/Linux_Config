vim.pack.add({ "https://github.com/folke/lazydev.nvim" })

require("lazydev").setup({
	ft = "lua",
	library = {
		-- Load luvit types when the `vim.uv` word is found
		{ path = "luvit-meta/library", words = { "vim%.uv" } },
	},
})
