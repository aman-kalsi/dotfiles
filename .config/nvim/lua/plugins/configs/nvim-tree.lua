-- empty setup using defaults
require('nvim-tree').setup({
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		show_on_open_dirs = true,
		debounce_delay = 50,
		severity = {
			min = vim.diagnostic.severity.HINT,
			max = vim.diagnostic.severity.ERROR,
		},
	},
})
local nvim_tree = require('nvim-tree.api')
vim.keymap.set('n', '<leader>tt', nvim_tree.tree.toggle, {})
vim.keymap.set('n', '<leader>tf', nvim_tree.tree.focus, {})

