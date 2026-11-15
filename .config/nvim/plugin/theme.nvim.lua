vim.pack.add({ "https://github.com/folke/tokyonight.nvim" })

require("tokyonight").setup({
	style = "night",
	transparent = true,
})

vim.cmd.hi("Comment gui=none")
vim.cmd.colorscheme("tokyonight")

vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#808080", bold = true })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#808080", bold = true })
-- vim.api.nvim_set_hl(0, "Visual", { bg = "#3b4261", fg = "NONE" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#495178", fg = "NONE" })
