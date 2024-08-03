-- lua/plugins/custom_filetypes.lua

-- Define custom filetype detection
vim.filetype.add({
	extension = {
		apg = "c",
		papg = "c",
		ph = "c",
		-- `.h` is typically already recognized as a C header file
	},
})

-- Set syntax highlighting and formatting for custom extensions
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { "*.apg", "*.papg", "*.h", "*.ph" },
	callback = function()
		vim.bo.filetype = "c"
		vim.bo.syntax = "c"
		vim.bo.shiftwidth = 4
		vim.bo.tabstop = 4
		vim.bo.expandtab = true
	end,
})
