--
vim.o.fillchars='eob: '
-- Leader is space
vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.cmd([[ autocmd FileType tex set textwidth=80 ]])

vim.cmd([[ let g:neoformat_enabled_javascript = ['prettier'] ]])
vim.cmd([[ let g:neoformat_enabled_lua = ['stylua'] ]])

-- Spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- :Wq, Xa, etc. remaps
vim.cmd("command! Wq wq")
vim.cmd("command! W w")
vim.cmd("command! Q q")
vim.cmd("command! X x")
vim.cmd("command! Xa xa")

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
		vim.opt_local.expandtab = true
	end,
})

-- Highlight on yank
vim.cmd("au TextYankPost * lua vim.highlight.on_yank {on_visual = false}")

-- Open file explorer
vim.api.nvim_set_keymap("n", "<leader>fe", ":Ex<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fr", ":vspl<CR><Esc>:Ex<CR>", { noremap = true })

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fd", builtin.git_files, {})
vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, {})
vim.keymap.set("n", "<leader>fc", builtin.lsp_references, {})
vim.keymap.set("n", "<leader>vd", function()
	vim.diagnostic.open_float()
end, opts)

-- Format
vim.api.nvim_set_keymap("n", "<leader>p", ":Neoformat<CR>", { noremap = true })

-- IncRename
vim.keymap.set("n", "<leader>rn", ":IncRename ")

-- Ouroboros
vim.keymap.set("n", "<leader>oo", ":Ouroboros<CR>")

-- Harpoon
vim.keymap.set("n", "<leader>hh", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", { silent = true })
vim.keymap.set("n", "<leader>hc", ":lua require('harpoon.mark').add_file()<CR>", { silent = true })

-- No header
vim.cmd("let g:netrw_banner = 0")
vim.cmd("set noshowmode")

-- Yank into system clipboard
vim.opt.clipboard = "unnamedplus"


vim.keymap.set("n", "<leader>n", ":Neotree<CR>")


require("nvim-ts-autotag").setup({
	opts = {
		-- Defaults
		enable_close = true, -- Auto close tags
		enable_rename = true, -- Auto rename pairs of tags
		enable_close_on_slash = false, -- Auto close on trailing </
	},
})

vim.opt.timeoutlen = 200

-- recommended mappings
-- resizing splits
-- these keymaps will also accept a range,
-- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
vim.keymap.set("n", "<A-h>", require("smart-splits").resize_left)
vim.keymap.set("n", "<A-j>", require("smart-splits").resize_down)
vim.keymap.set("n", "<A-k>", require("smart-splits").resize_up)
vim.keymap.set("n", "<A-l>", require("smart-splits").resize_right)
-- moving between splits
vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
vim.keymap.set("n", "<C-\\>", require("smart-splits").move_cursor_previous)
-- swapping buffers between windows
vim.keymap.set("n", "<leader><leader>h", require("smart-splits").swap_buf_left)
vim.keymap.set("n", "<leader><leader>j", require("smart-splits").swap_buf_down)
vim.keymap.set("n", "<leader><leader>k", require("smart-splits").swap_buf_up)
vim.keymap.set("n", "<leader><leader>l", require("smart-splits").swap_buf_right)

vim.keymap.set("t", "<ESC>", "<C-\\><C-n>")
vim.keymap.set("n", "<Tab>", "<cmd>bn<CR>")
vim.keymap.set("n", "<S-Tab>", "<cmd>bp<CR>")

vim.keymap.set({ "n", "o", "x" }, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
vim.keymap.set({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
vim.keymap.set({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })
