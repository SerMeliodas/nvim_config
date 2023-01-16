--imports
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("ser.autocomplete_settings")
require("ser.lsp_settings")
require("ser.lualine_settings")
require("ser.nvimTree_settings")
require("ser.base")
require("ser.plugins")
require("ser.maps")

local status, telescope = pcall(require, "telescope")
if not status then
	return
end

telescope.setup({
	extensions = {
		file_browser = {
			theme = "ivy",
			-- disables netrw and use telescope-file-browser in its place
			hijack_netrw = true,
			mappings = {
				["i"] = {
					-- your custom insert mode mappings
				},
				["n"] = {
					-- your custom normal mode mappings
				},
			},
		},
	},
})

telescope.load_extension("file_browser")
