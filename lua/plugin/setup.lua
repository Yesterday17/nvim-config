pcall(
	vim.cmd,
	[[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost setup.lua source <afile> | PackerSync
    augroup end
  ]]
)

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- 主题
	use("folke/tokyonight.nvim")
	use("lukas-reineke/indent-blankline.nvim")

	-- 文件树
	use({
		"kyazdani42/nvim-tree.lua",
		requires = { "kyazdani42/nvim-web-devicons" },
	})

	-- 顶部 Tab
	use({
		"romgrk/barbar.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})

	-- 底部提示栏
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})
	-- use({
	-- 	"gelguy/wilder.nvim",
	-- 	config = function()
	-- 		local wilder = require("wilder")
	-- 		wilder.setup({ modes = { ":", "/", "?" } })
	-- 		wilder.set_option("pipeline", {
	-- 			wilder.branch(wilder.cmdline_pipeline(), wilder.search_pipeline()),
	-- 		})
	-- 		wilder.set_option(
	-- 			"renderer",
	-- 			wilder.popupmenu_renderer(wilder.popupmenu_border_theme({
	-- 				highlights = {
	-- 					border = "Normal", -- highlight to use for the border
	-- 				},
	-- 				-- 'single', 'double', 'rounded' or 'solid'
	-- 				-- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
	-- 				border = "rounded",
	-- 			}))
	-- 		)
	-- 	end,
	-- })

	-- 终端
	use("caenrique/nvim-toggle-terminal")

	-- Git
	use({
		"tanvirtin/vgit.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	-- 全局查找
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Post-install/update hook with neovim command
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

	-- LSP
	use({
		"williamboman/nvim-lsp-installer",
		"neovim/nvim-lspconfig",
		"tami5/lspsaga.nvim",
	})

	-- 格式化
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = "nvim-lua/plenary.nvim",
	})

	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	})

	-- 补全
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("onsails/lspkind.nvim")

	-- Snippets
	use("hrsh7th/vim-vsnip")
	use("hrsh7th/cmp-vsnip")
	use("rafamadriz/friendly-snippets")

	-- Rust
	use("simrat39/rust-tools.nvim")
	use("nvim-lua/plenary.nvim")
	use("mfussenegger/nvim-dap")
	use({
		"saecki/crates.nvim",
		tag = "v0.2.1",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("crates").setup()
		end,
	})

	-- GitHub Copilot
	use("github/copilot.vim")
end)
