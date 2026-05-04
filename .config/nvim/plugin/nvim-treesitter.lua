vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter-textobjects" })
vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

-- TODO: TSUpdate stuff...
--
require("nvim-treesitter").setup({
	ensure_installed = {
		"bash",
		"c",
		"cpp",
		"css",
		"go",
		"gomod",
		"gosum",
		"gowork",
		"html",
		"javascript",
		"jsdoc",
		"json",
		"lua",
		"markdown",
		"markdown_inline",
		"python",
		"rust",
		"typescript",
		"yaml",
	},

	highlight = {
		enable = true,
	},
})

require("nvim-treesitter").install({
	"bash",
	"c",
	"cpp",
	"css",
	"go",
	"gomod",
	"gosum",
	"gowork",
	"html",
	"javascript",
	"jsdoc",
	"json",
	"lua",
	"markdown",
	"markdown_inline",
	"python",
	"rust",
	"typescript",
	"yaml",
})
