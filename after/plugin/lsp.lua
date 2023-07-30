local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

lsp.ensure_installed({
	'sumneko_lua',
})

-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
--local cmp_select = {behaviour = cmp.SelectBehaviour.Select}

cmp.setup({
	mapping = {
		-- `Enter` key to confirm completion
		-- ['<C-y>'] = cmp.mapping.confirm({select = false}),
		-- ['<Tab>'] = cmp.mapping.confirm({select = false}),
		['<Tab>'] = cmp.mapping.confirm({select = true}),

		-- Ctrl+Space to trigger completion menu
		['<C-Space>'] = cmp.mapping.complete(),

		--['<C-p>'] = cmp.mapping..select_prev_item(cmp_select),
		--['<C-n>'] = cmp.mapping..select_next_item(cmp_select),

		-- Navigate between snippet placeholder
		['<C-f>'] = cmp_action.luasnip_jump_forward(),
		['<C-b>'] = cmp_action.luasnip_jump_backward(),
	}
})
