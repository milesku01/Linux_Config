vim.pack.add({ "https://github.com/folke/snacks.nvim" })

require("snacks").setup({
	bigfile = { enabled = true },
	dashboard = { enabled = true },
	-- explorer = { enabled = true },
	-- indent = { enabled = true },
	input = { enabled = true },
	notifier = {
		enabled = true,
		timeout = 8000,
	},
	picker = { enabled = true },
	quickfile = { enabled = true },
	scope = { enabled = true },
	-- scroll = { enabled = true },
	statuscolumn = { enabled = true },
	words = { enabled = true },
	styles = {
		notification = {
			-- wo = { wrap = true } -- Wrap notifications
		},
	},
})

vim.keymap.set("n", "<leader><space>", require("snacks").picker.smart, { desc = "Smart Find Files" })
vim.keymap.set("n", "<leader>,", require("snacks").picker.buffers, { desc = "Buffers" })
-- { "<leader>/", require("snacks").picker.grep , desc = "Grep" },
vim.keymap.set("n", "<leader>:", require("snacks").picker.command_history, { desc = "Command History" })
vim.keymap.set("n", "<leader>n", require("snacks").picker.notifications, { desc = "Notification History" })
-- { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
-- find
vim.keymap.set("n", "<leader>fb", require("snacks").picker.buffers, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fg", require("snacks").picker.git_files, { desc = "Find Git Files" })
vim.keymap.set("n", "<leader>fp", require("snacks").picker.projects, { desc = "Projects" })
vim.keymap.set("n", "<leader>fr", require("snacks").picker.recent, { desc = "Recent" })
vim.keymap.set("n", "<leader>sf", function()
	require("snacks").picker.files({ hidden = true })
end, { desc = "Find Files" })
-- git
vim.keymap.set("n", "<leader>gb", require("snacks").picker.git_branches, { desc = "Git Branches" })
vim.keymap.set("n", "<leader>gl", require("snacks").picker.git_log, { desc = "Git Log" })
vim.keymap.set("n", "<leader>gL", require("snacks").picker.git_log_line, { desc = "Git Log Line" })
vim.keymap.set("n", "<leader>gs", require("snacks").picker.git_status, { desc = "Git Status" })
vim.keymap.set("n", "<leader>gS", require("snacks").picker.git_stash, { desc = "Git Stash" })
vim.keymap.set("n", "<leader>gd", require("snacks").picker.git_diff, { desc = "Git Diff (Hunks)" })
vim.keymap.set("n", "<leader>gf", require("snacks").picker.git_log_file, { desc = "Git Log File" })
-- gh
vim.keymap.set("n", "<leader>gi", require("snacks").picker.gh_issue, { desc = "GitHub Issues (open)" })
vim.keymap.set("n", "<leader>gI", function()
	require("snacks").picker.gh_issue({ state = "all" })
end, { desc = "GitHub Issues (all)" })
vim.keymap.set("n", "<leader>gp", require("snacks").picker.gh_pr, { desc = "GitHub Pull Requests (open)" })
vim.keymap.set("n", "<leader>gP", function()
	require("snacks").picker.gh_pr({ state = "all" })
end, { desc = "GitHub Pull Requests (all)" })
-- Grep
vim.keymap.set("n", "<leader>sb", require("snacks").picker.lines, { desc = "Buffer Lines" })
vim.keymap.set("n", "<leader>sB", require("snacks").picker.grep_buffers, { desc = "Grep Open Buffers" })
vim.keymap.set("n", "<leader>sg", require("snacks").picker.grep, { desc = "Grep" })
vim.keymap.set("n", "<leader>sw", require("snacks").picker.grep_word, { desc = "Visual selection or word" })
-- search
vim.keymap.set("n", '<leader>s"', require("snacks").picker.registers, { desc = "Registers" })
vim.keymap.set("n", "<leader>s/", require("snacks").picker.search_history, { desc = "Search History" })
vim.keymap.set("n", "<leader>sa", require("snacks").picker.autocmds, { desc = "Autocmds" })
vim.keymap.set("n", "<leader>sb", require("snacks").picker.lines, { desc = "Buffer Lines" })
vim.keymap.set("n", "<leader>sc", require("snacks").picker.command_history, { desc = "Command History" })
vim.keymap.set("n", "<leader>sC", require("snacks").picker.commands, { desc = "Commands" })
vim.keymap.set("n", "<leader>sd", require("snacks").picker.diagnostics, { desc = "Diagnostics" })
vim.keymap.set("n", "<leader>sD", require("snacks").picker.diagnostics_buffer, { desc = "Buffer Diagnostics" })
vim.keymap.set("n", "<leader>sh", require("snacks").picker.help, { desc = "Help Pages" })
vim.keymap.set("n", "<leader>sH", require("snacks").picker.highlights, { desc = "Highlights" })
vim.keymap.set("n", "<leader>si", require("snacks").picker.icons, { desc = "Icons" })
vim.keymap.set("n", "<leader>sj", require("snacks").picker.jumps, { desc = "Jumps" })
vim.keymap.set("n", "<leader>sk", require("snacks").picker.keymaps, { desc = "Keymaps" })
vim.keymap.set("n", "<leader>sl", require("snacks").picker.loclist, { desc = "Location List" })
vim.keymap.set("n", "<leader>sm", require("snacks").picker.marks, { desc = "Marks" })
vim.keymap.set("n", "<leader>sM", require("snacks").picker.man, { desc = "Man Pages" })
vim.keymap.set("n", "<leader>sp", require("snacks").picker.lazy, { desc = "Search for Plugin Spec" })
vim.keymap.set("n", "<leader>sq", require("snacks").picker.qflist, { desc = "Quickfix List" })
vim.keymap.set("n", "<leader>sR", require("snacks").picker.resume, { desc = "Resume" })
vim.keymap.set("n", "<leader>su", require("snacks").picker.undo, { desc = "Undo History" })
vim.keymap.set("n", "<leader>uC", require("snacks").picker.colorschemes, { desc = "Colorschemes" })
-- LSP
vim.keymap.set("n", "gd", require("snacks").picker.lsp_definitions, { desc = "Goto Definition" })
vim.keymap.set("n", "gD", require("snacks").picker.lsp_declarations, { desc = "Goto Declaration" })
-- TODO: fix
vim.keymap.set("n", "gr", require("snacks").picker.lsp_references, { nowait = true, desc = "References" })
vim.keymap.set("n", "gI", require("snacks").picker.lsp_implementations, { desc = "Goto Implementation" })
vim.keymap.set("n", "gy", require("snacks").picker.lsp_type_definitions, { desc = "Goto T[y]pe Definition" })
vim.keymap.set("n", "gai", require("snacks").picker.lsp_incoming_calls, { desc = "C[a]lls Incoming" })
vim.keymap.set("n", "gao", require("snacks").picker.lsp_outgoing_calls, { desc = "C[a]lls Outgoing" })
vim.keymap.set("n", "<leader>ss", require("snacks").picker.lsp_symbols, { desc = "LSP Symbols" })
vim.keymap.set("n", "<leader>sS", require("snacks").picker.lsp_workspace_symbols, { desc = "LSP Workspace Symbols" })
-- Other
vim.keymap.set("n", "<leader>z", function()
	require("snacks").zen()
end, { desc = "Toggle Zen Mode" })
vim.keymap.set("n", "<leader>Z", require("snacks").zen.zoom, { desc = "Toggle Zoom" })
vim.keymap.set("n", "<leader>.", function()
	require("snacks").scratch()
end, { desc = "Toggle Scratch Buffer" })
vim.keymap.set("n", "<leader>S", require("snacks").scratch.select, { desc = "Select Scratch Buffer" })
vim.keymap.set("n", "<leader>n", require("snacks").notifier.show_history, { desc = "Notification History" })
vim.keymap.set("n", "<leader>bd", function()
	require("snacks").bufdelete()
end, { desc = "Delete Buffer" })
vim.keymap.set("n", "<leader>cR", require("snacks").rename.rename_file, { desc = "Rename File" })
vim.keymap.set("n", "<leader>gB", function()
	require("snacks").gitbrowse()
end, { desc = "Git Browse" })
vim.keymap.set("n", "<leader>gg", function()
	require("snacks").lazygit()
end, { desc = "Lazygit" })
vim.keymap.set("n", "<leader>un", require("snacks").notifier.hide, { desc = "Dismiss All Notifications" })
vim.keymap.set("n", "<c-/>", function()
	require("snacks").terminal()
end, { desc = "Toggle Terminal" })
vim.keymap.set("n", "<c-_>", function()
	require("snacks").terminal()
end, { desc = "which_key_ignore" })

vim.keymap.set("n", "]]", function()
	require("snacks").words.jump(vim.v.count1)
end, { desc = "Next Reference" })
vim.keymap.set("t", "]]", function()
	require("snacks").words.jump(vim.v.count1)
end, { desc = "Next Reference" })

vim.keymap.set("n", "[[", function()
	require("snacks").words.jump(-vim.v.count1)
end, { desc = "Prev Reference" })
vim.keymap.set("t", "[[", function()
	require("snacks").words.jump(-vim.v.count1)
end, { desc = "Prev Reference" })
