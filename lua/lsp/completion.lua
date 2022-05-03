local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
	snippet = {
		expand = function(args)
			-- vsnip
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	window = {
		-- completion = cmp.config.window.bordered(),
		-- documentation = cmp.config.window.bordered(),
	},
	-- 快捷键
	mapping = require("key.completion").bind_keys(cmp),
	-- 补全源
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "vsnip" },
	}, {
		{ name = "buffer" },
		{ name = "path" },
		{ name = "crates" },
	}),
	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol",
			-- maxwidth = 50,
			before = function(entry, vim_item)
				return vim_item
			end,
		}),
	},
})

-- / 查找模式使用 buffer 源
cmp.setup.cmdline("/", {
	sources = {
		{ name = "buffer" },
	},
})

-- : 命令行模式中使用 path 和 cmdline 源.
cmp.setup.cmdline(":", {
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})
