-- Setup language servers
local lspconfig = require('lspconfig')

-- tsserver setup
lspconfig.tsserver.setup({})
lspconfig.lua_ls.setup({})
lspconfig.pyright.setup({})
lspconfig.ocamllsp.setup({})

--lsp mappings
vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local opts = { buffer = ev.buf }
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
		vim.keymap.set('n', 'rn', vim.lsp.buf.rename, opts)
	end,
})

-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- luasnip setup
local luasnip = require('luasnip')
-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'lua_ls', 'pyright', 'tsserver', 'ocamllsp' }
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		capabilities = capabilities,
	}
end

-- nvim-cmp setup (for LSP)
local cmp = require('cmp')
cmp.setup {
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<CR>'] = cmp.mapping.confirm {
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		},
		['<Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { 'i', 's' }),
	}),
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
	},
}

