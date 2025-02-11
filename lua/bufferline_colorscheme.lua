-- Setting up colors schemes for bufferline.lua.

local colour = require("nord.colors")

-- Background colors.
local selected_bg = colour.nord0_gui
-- Darker nord0_gui colour.
local dark_bg = "#1E2330"
-- Darker nord0_gui colour.
local bg = "#1E2330"
local visible_bg = colour.nord0_gui

-- Foreground colors.
local hint = colour.nord8_gui
local info = colour.nord8_gui
local warning = colour.nord13_gui
local error_col = colour.nord11_gui

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
    -- separator_selected = { fg = dark_bg, bg = selected_bg },
    -- separator_visible = { fg = dark_bg },
    -- separator = { fg = dark_bg },
    separator_selected = { fg = dark_bg, bg = selected_bg },
    separator_visible = { fg = dark_bg, bg = selected_bg },
    separator = { fg = dark_bg, bg = dark_bg },
    indicator_visible = { bg = visible_bg },
    indicator_selected = { bg = selected_bg },
    pick_selected = { bg = selected_bg },
    pick_visible = { bg = visible_bg },
    pick = { bg = bg },
    offset_separator = { bg = selected_bg },
    trunc_marker = { bg = bg },
}

return bufferline_colors
