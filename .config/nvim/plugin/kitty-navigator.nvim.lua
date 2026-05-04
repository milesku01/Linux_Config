vim.pack.add({ "https://github.com/MunsMan/kitty-navigator.nvim" })

require("kitty-navigator").setup({
	keybindings = {
		left = "<C-S-h>",
		down = "<C-S-j>",
		up = "<C-S-k>",
		right = "<C-S-l>",
	},
})
