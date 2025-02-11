-- Lualine plugins (bottom line).
return {
	"nvim-lualine/lualine.nvim",
	requires = { "nvim-tree/nvim-web-devicons", opt = true },
	config = function()
		-- --Colors
		-- -- Copyright (c) 2020-2021 IGI-111
		-- -- MIT license, see LICENSE for more details.
		-- -- stylua: ignore
		-- local colors = {
		--     vertsplit      = COLOUR.black,
		--     special_grey   = COLOUR.base4,
		--     menu_grey      = COLOUR.base4,
		--     cursor_grey    = COLOUR.base3,
		--     gutter_fg_grey = COLOUR.base4,
		--     blue           = COLOUR.orange,
		--     white          = COLOUR.white,
		--     green          = COLOUR.green,
		--     purple         = COLOUR.purple,
		--     yellow         = COLOUR.yellow,
		--     dark_yellow    = "#F78C6C",
		--     light_red      = "#ff869a",
		--     red            = COLOUR.red,
		--     dark_red       = "#BE5046",
		--     cyan           = COLOUR.aqua,
		--     comment_grey   = "#697098",
		--     -- Modified so it match terminal background color.
		--     black          = COLOUR.base2,
		-- }

		-- local palenight = {
		--     normal = {
		--         a = { fg = colors.black, bg = colors.purple, gui = "bold" },
		--         b = { fg = colors.purple, bg = colors.menu_grey },
		--         c = { fg = colors.comment_grey, bg = colors.black },
		--     },
		--     insert = {
		--         a = { fg = colors.black, bg = colors.blue, gui = "bold" },
		--         b = { fg = colors.blue, bg = colors.menu_grey },
		--     },
		--     visual = {
		--         a = { fg = colors.black, bg = colors.cyan, gui = "bold" },
		--         b = { fg = colors.cyan, bg = colors.menu_grey },
		--     },
		--     replace = {
		--         a = { fg = colors.black, bg = colors.green, gui = "bold" },
		--         b = { fg = colors.green, bg = colors.menu_grey },
		--     },
		--     inactive = {
		--         a = { fg = colors.menu_grey, bg = colors.black, gui = "bold" },
		--         b = { fg = colors.menu_grey, bg = colors.black },
		--         c = { fg = colors.menu_grey, bg = colors.black },
		--     },
		-- }

		local lualine_theme = require("lualine")

		-- Customizing the nord background theme.
		local custom_nord = require("lualine.themes.nord")
		local bg_color = require("nord.colors").nord0_gui

		custom_nord.normal.a.fg = bg_color
		custom_nord.normal.c.bg = bg_color

		custom_nord.insert.a.fg = bg_color
		custom_nord.visual.a.fg = bg_color
		custom_nord.replace.a.fg = bg_color

		custom_nord.inactive.a.bg = bg_color
		custom_nord.inactive.b.bg = bg_color
		custom_nord.inactive.c.bg = bg_color

		-- Setting the theme.
		lualine_theme.setup({
			options = {
				theme = custom_nord, --palenight,
				component_separators = "",
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = {
					{ "mode", separator = { left = "" }, right_padding = 2 },
				},
				lualine_b = { "filename", "branch" },
				lualine_c = {},
				lualine_x = {},
				lualine_y = { "filetype", "progress" },
				lualine_z = {
					{
						"location",
						separator = { right = "" },
						left_padding = 2,
					},
				},
			},
			inactive_sections = {
				lualine_a = { "filename" },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "location" },
			},
			tabline = {},
			extensions = {},
		})
	end,
}
