local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- dev-icons for nvm-tree
	use 'nvim-tree/nvim-web-devicons'
	use 'nvim-tree/nvim-tree.lua'

	-- theme
	use 'folke/tokyonight.nvim'

	-- telescope grepping
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}

	-- nvim-lspconfig for quick lsp configurations
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin

  -- for git
	use 'tpope/vim-fugitive'

	-- used for multiline commenting
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}
	if packer_bootstrap then
		require('packer').sync()
	end
end)
