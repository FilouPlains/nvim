-- Lualine plugins (bottom line).
return {
	"nvim-lualine/lualine.nvim",
	requires = { "nvim-tree/nvim-web-devicons", opt = true },
	config = function()
        --Colors
        -- Copyright (c) 2020-2021 IGI-111
        -- MIT license, see LICENSE for more details.
        -- stylua: ignore
        local colors = {
            vertsplit      = '#181A1F',
            special_grey   = '#3B4048',
            menu_grey      = '#3E4452',
            cursor_grey    = '#2C323C',
            gutter_fg_grey = '#4B5263',
            blue           = '#82b1ff',
            dark_red       = '#BE5046',
            white          = '#bfc7d5',
            green          = '#C3E88D',
            purple         = '#c792ea',
            yellow         = '#ffcb6b',
            light_red      = '#ff869a',
            red            = '#ff5370',
            dark_yellow    = '#F78C6C',
            cyan           = '#89DDFF',
            comment_grey   = '#697098',
            -- Modified so it match terminal background color.
            black          = '#262626',
        }

		local palenight = {
			normal = {
				a = { fg = colors.black, bg = colors.purple, gui = "bold" },
				b = { fg = colors.purple, bg = colors.menu_grey },
				c = { fg = colors.comment_grey, bg = colors.black },
			},
			insert = {
				a = { fg = colors.black, bg = colors.blue, gui = "bold" },
				b = { fg = colors.blue, bg = colors.menu_grey },
			},
			visual = {
				a = { fg = colors.black, bg = colors.cyan, gui = "bold" },
				b = { fg = colors.cyan, bg = colors.menu_grey },
			},
			replace = {
				a = { fg = colors.black, bg = colors.green, gui = "bold" },
				b = { fg = colors.green, bg = colors.menu_grey },
			},
			inactive = {
				a = { fg = colors.menu_grey, bg = colors.black, gui = "bold" },
				b = { fg = colors.menu_grey, bg = colors.black },
				c = { fg = colors.menu_grey, bg = colors.black },
			},
		}

		-- Setting the theme.
		require("lualine").setup({
			options = {
				theme = palenight,
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
