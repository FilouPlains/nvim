--- Gets the current buffer's path relative to the current working directory.
---
--- @return string The relative path of the current buffer.
local function get_path()
    local current_path = string.gsub(vim.api.nvim_buf_get_name(0), vim.loop.cwd(), "")

    current_path = current_path:sub(2)

    return current_path
end

--- Constructs the appropriate Python command to run a script.
---
--- @param path string The path of the Python script.
--- @return string|nil The command to run the Python script, or nil if the
---                    input was invalid.
local function python_command(path)
    local do_module = vim.fn.input("Is this a module [y/n]? ", "y")

    if do_module ~= "y" and do_module ~= "n" then
        return nil
    end

    if do_module == "y" then
        path = "-m " .. path:gsub("/", "."):sub(1, -4)
    end

    return "python " .. path
end

--- Constructs the appropriate Bash command to run a script.
---
--- @param path string The path of the Bash script.
--- @return string|nil The command to run the bash script.
local function bash_command(path)
    return "bash " .. path
end

--- Constructs the appropriate HTML / CSS command to live edit.
---
--- @param path string The path of the HTML / CSS script.
--- @return string|nil The command to run the bash script.
local function html_css_command(path)
    local command = 'browser-sync start --server --directory --files "*"' ..
        " --startPath \""

    return command .. path .. "\""
end

--- Launches a script based on its file extension.
--- Currently supports only Python scripts.
---
--- @param path string The path of the script.
--- @return string|nil The command to launch the script, or nil if the
---                    extension is not supported.
local function launch_script(path)
    local extension = string.match(path, "%..+$")

    if extension == ".py" then
        return python_command(path)
    elseif extension == ".sh" then
        return bash_command(path)
    elseif extension == ".html" or extension == ".css" then
        return html_css_command(path)
    else
        return nil
    end
end

-- The new command to launch the current script.
vim.api.nvim_create_user_command("LaunchScript", function()
    local command = launch_script(get_path())

    if command == nil then
        print("No defined routine to execute a script with this file extension.")
    else
        command = vim.fn.input(":", "terminal " .. command)

        vim.cmd("redraw")
        vim.cmd(command)
    end
end, {})

-- A keymap to launch the current script.
vim.keymap.set("n", "<C-A-b>", ":LaunchScript<CR>")

return {}
