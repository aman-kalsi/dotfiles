-- treesitter
require('nvim-treesitter.configs').setup {
	ensure_installed = { "vim", "lua", "javascript", "typescript", "python", "ocaml", "rust" },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	}
}

