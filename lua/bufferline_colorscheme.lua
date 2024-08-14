-- Setting up colors schemes for bufferline.lua.

-- Background colors.
local selected_bg = COLOUR.base2
local dark_bg = "#1F1F1F"
local bg = dark_bg
local visible_bg = COLOUR.base2

-- Foreground colors.
local hint = COLOUR.aqua
local info = COLOUR.aqua
local warning = COLOUR.yellow
local error_col = COLOUR.red

-- Colors definition.
local bufferline_colors = {
    fill = { bg = dark_bg },
    background = { bg = bg },
    tab = { bg = bg },
    tab_selected = { bg = selected_bg },
    tab_separator = { bg = bg },
    tab_separator_selected = { bg = selected_bg },
    tab_close = { bg = bg },
    close_button = { bg = bg },
    close_button_visible = { bg = visible_bg },
    close_button_selected = { bg = selected_bg },
    buffer_visible = { bg = visible_bg },
    buffer_selected = { bg = selected_bg },
    numbers = { bg = bg },
    numbers_visible = { bg = visible_bg },
    numbers_selected = { bg = selected_bg },
    diagnostic = { bg = bg },
    diagnostic_visible = { bg = visible_bg },
    diagnostic_selected = { bg = selected_bg },
    hint = { bg = bg, fg = hint },
    hint_visible = { bg = visible_bg, fg = hint },
    hint_selected = { bg = selected_bg, fg = hint },
    hint_diagnostic = { bg = bg, fg = hint },
    hint_diagnostic_visible = { bg = visible_bg, fg = hint },
    hint_diagnostic_selected = { bg = selected_bg, fg = hint },
    info = { bg = bg, fg = info },
    info_visible = { bg = visible_bg, fg = info },
    info_selected = { bg = selected_bg, fg = info },
    info_diagnostic = { bg = bg, fg = info },
    info_diagnostic_visible = { bg = visible_bg, fg = info },
    info_diagnostic_selected = { bg = selected_bg, fg = info },
    warning = { bg = bg, fg = warning },
    warning_visible = { bg = visible_bg, fg = warning },
    warning_selected = { bg = selected_bg, fg = warning },
    warning_diagnostic = { bg = bg, fg = warning },
    warning_diagnostic_visible = { bg = visible_bg, fg = warning },
    warning_diagnostic_selected = { bg = selected_bg, fg = warning },
    error = { bg = bg, fg = error_col },
    error_visible = { bg = visible_bg, fg = error_col },
    error_selected = { bg = selected_bg, fg = error_col },
    error_diagnostic = { bg = bg, fg = error_col },
    error_diagnostic_visible = { bg = visible_bg, fg = error_col },
    error_diagnostic_selected = { bg = selected_bg, fg = error_col },
    modified = { bg = bg },
    modified_visible = { bg = visible_bg },
    modified_selected = { bg = selected_bg },
    duplicate_selected = { bg = selected_bg },
    duplicate_visible = { bg = visible_bg },
    duplicate = { bg = bg },
    separator_selected = { fg = dark_bg, bg = selected_bg },
    separator_visible = { fg = dark_bg },
    separator = { fg = dark_bg },
    indicator_visible = { bg = visible_bg },
    indicator_selected = { bg = selected_bg },
    pick_selected = { bg = selected_bg },
    pick_visible = { bg = visible_bg },
    pick = { bg = bg },
    offset_separator = { bg = selected_bg },
    trunc_marker = { bg = bg },
}

return bufferline_colors
