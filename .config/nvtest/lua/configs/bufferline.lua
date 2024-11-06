local bufferline = require("bufferline")
bufferline.setup({
	options = {
		themable = false,
		numbers = "ordinal",
		buffer_close_icon = "",
		modified_icon = "+",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",
		max_name_length = 10,
		max_prefix_length = 3,
		show_buffer_icons = false,
		enforce_regular_tabs = true,
		show_buffer_close_icons = false,
		show_close_icon = false,
		offsets = {
			{
				filetype = "neo-tree",
				text = "File Explorer",
				text_align = "center",
				separator = true,
        padding = 0,
			},
		},
	},

	highlights = {
		buffer_selected = {
			bold = false,
			italic = false,
		},
		tab = {
			bold = false,
			italic = false,
		},
		numbers_selected = {
      bold = false,
			italic = false,
		},
	},
})
