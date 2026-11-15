vim.pack.add({'https://github.com/folke/todo-comments.nvim'})
vim.pack.add({'https://github.com/nvim-lua/plenary.nvim'})

require("todo-comments").setup({ signs = false })
