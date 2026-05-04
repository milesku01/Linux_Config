vim.pack.add({ "https://github.com/echasnovski/mini.icons" })
vim.pack.add({ "https://github.com/stevearc/oil.nvim" })

require("mini.icons").setup()

require("oil").setup({
	view_options = {
		show_hidden = true,
	},
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
