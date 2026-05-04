return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects"
	},
	build = ":TSUpdate",
	lazy = false,

	opts = {
		ensure_installed = {
			"bash",
			"c", "cpp",
			"css",
			"go", "gomod", "gosum", "gowork",
			"html",
			"javascript",
			"jsdoc",
			"json",
			"lua",
			"markdown", "markdown_inline",
			"python",
			"rust",
			"typescript",
			"yaml"
		},

		highlight = {
			enable = true
		},
	},

	config = function(opts)
		require("nvim-treesitter").setup(opts)
		require("nvim-treesitter").install({
			"bash",
			"c", "cpp",
			"css",
			"go", "gomod", "gosum", "gowork",
			"html",
			"javascript",
			"jsdoc",
			"json",
			"lua",
			"markdown", "markdown_inline",
			"python",
			"rust",
			"typescript",
			"yaml"
		})
	end
}
