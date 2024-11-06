--* nvim-cmp configs *--
local cmp = require("cmp")
local luasnip = require("luasnip")
cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
		["<CR>"] = cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace }),
		["<Esc>"] = cmp.mapping.close(),
	}),
	window = {
		width = 60,
		height = 15,
	},
	--		completion = cmp.config.window.bordered("rounded"),
	--		documentation = cmp.config.window.bordered("rounded"),
	--	},
	sources = {
		{ name = "nvim_lsp" },
		-- { name = "vsnip" },
		{ name = "path" },
		{ name = "buffer", keyword_length = 2 },
	},
	completion = {
		keyword_length = 1,
		completeopt = "menu,noselect",
	},
	experimental = {
		ghost_text = true,
	},
})
