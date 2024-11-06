local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    -- bootstrap lazy.nvim
    -- stylua: ignore
    vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

-- Define the plugins
local plugins = {
  {'akinsho/toggleterm.nvim', version = "*", config = true},
	{  "catppuccin/nvim", name = "catppuccin", priority = 1000  },
	-- {
	-- 	"goolord/alpha-nvim",
	--    config = function ()
	--      require "configs.alpha"
	--    end
	-- },
	{ "DaikyXendo/nvim-material-icon" },
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- "nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},
	-- { "akinsho/bufferline.nvim", version = "*", opts = {} },
	{ "embark-theme/vim", as = "embark" },
	-- { "akinsho/horizon.nvim", version = "*" },
	{
		"xiyaowong/transparent.nvim",
	},
	{
		"hachy/eva01.vim",
		lazy = false,
		priority = 1000,
	},
	-- nvim-cmp

	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
		},
	},
	{
		"pwntester/codeql.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/telescope.nvim",
			-- "kyazdani42/nvim-web-devicons",
			{
				"s1n7ax/nvim-window-picker",
				version = "v1.*",
				opts = {
					autoselect_one = true,
					include_current = false,
					filter_rules = {
						bo = {
							filetype = {
								"codeql_panel",
								"codeql_explorer",
								"qf",
								"TelescopePrompt",
								"TelescopeResults",
								"notify",
								"noice",
								"NvimTree",
								"neo-tree",
							},
							buftype = { "terminal" },
						},
					},
					current_win_hl_color = "#e35e4f",
					other_win_hl_color = "#44cc41",
				},
			},
		},
		opts = {},
	},

	{
		"jakemason/ouroboros",
	},

	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- Copilot
	--{
	--	"github/copilot.vim",
	--},

	-- Fashion
	{
		"nvim-lualine/lualine.nvim",
		-- dependencies = { "nvim-tree/nvim-web-devicons" },
		event = "VeryLazy",
	},
	{
		"mellow-theme/mellow.nvim",
	},
	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		event = "BufRead",
	},

	-- Git stuff
	{
		"tpope/vim-fugitive",
	},
	{
		"lewis6991/gitsigns.nvim",
	},

	-- Formatter
	{
		"sbdchd/neoformat",
		cmd = { "Neoformat" },
	},

	-- LSP
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"neovim/nvim-lspconfig",
		event = "BufRead",
	},
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
	},
	{
		"saadparwaiz1/cmp_luasnip",
	},

	-- Complete parentheses
	{
		"windwp/nvim-autopairs",
	},
	{
		"windwp/nvim-ts-autotag",
	},
	{
		"smjonas/inc-rename.nvim",
	},
	{
		"ThePrimeagen/harpoon",
	},
	{
		"simrat39/rust-tools.nvim",
	},
	{
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
	},

	{
		"lervag/vimtex",
		lazy = false, -- we don't want to lazy load VimTeX
		init = function()
			vim.g.vimtex_view_method = "zathura"
		end,
	},
	{
		"j-hui/fidget.nvim",
		opts = {
			notification = {
				window = {
					winblend = 0,
				},
			},
		},
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
	{ "mrjones2014/smart-splits.nvim" },
	{ "chrisgrieser/nvim-spider", lazy = true },
}

-- Load the plugins
local lazy_opts = {
	ui = {
		border = "rounded",
		title = "lazy.nvim",
		title_pos = "center",
	},
}

require("lazy").setup(plugins, lazy_opts)

require("gitsigns").setup()
require("inc_rename").setup()
require("nvim-autopairs").setup()
require("configs.ouroboros")
require("configs.color-scheme")
require("configs.lsp")
require("configs.lualine")
require("configs.nvim-cmp")
require("configs.telescope")
require("configs.vimtex")
require("configs.codeql")
require("configs.transparent")
-- require("configs.bufferline")
require("configs.neotree")
