vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter-textobjects" })
vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

local languages = {
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
}

-- TODO: TSUpdate stuff...
--
require("nvim-treesitter").setup({
	install_dir = vim.fn.stdpath("data") .. "/site",
	ensure_installed = languages,
	highlight = {
		enable = true,
	},
})

require("nvim-treesitter").install(languages)

vim.api.nvim_create_autocmd("FileType", {
	pattern = languages,
	callback = function()
		vim.treesitter.start()
	end,
})
