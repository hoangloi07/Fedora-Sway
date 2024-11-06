require("neo-tree").setup({

	source_selector = {
		statusline = false,

		sources = { -- table
			{
				source = "filesystem", -- string
				display_name = " 󰉓 Files ", -- string | nil
			},
			{
				source = "buffers", -- string
				display_name = " 󰈚 Buffers ", -- string | nil   })
			},
			{
				source = "git_status", -- string
				display_name = " 󰊢 Git ", -- string | nil
			},
		},
	},
})
