-- To download plantUML stuff.
local release_version = "1.2024.6"
local plantuml = "plantuml-" .. release_version .. ".jar"

-- Create the executable.
local function create_plantuml_script()
    local path = os.getenv("HOME") .. "/.local/bin/plantuml"

    local file = io.open(path, "w")

    if file then
        file:write("#!/bin/bash\n")
        file:write("java -jar ~/.local/share/nvim/lazy/plantuml-syntax/")
        file:write(plantuml .. " -tsvg $@")

        file:close()

        vim.loop.fs_chmod(path, tonumber("755", 8))
    else
        print("Could not create plantuml executable.")
    end
end

return {
    "aklt/plantuml-syntax",
    config = function()
        local path = os.getenv("HOME") .. "/.local/bin/plantuml"

        -- Check that the executable exists. Else, create it.
        if vim.fn.filereadable(path) ~= "0" then
            create_plantuml_script()
        end

        path = os.getenv("HOME") .. "/.local/share/nvim/lazy/plantuml-syntax/"
        path = path .. plantuml

        -- Download plantUML if it doesn't exist.
        if vim.fn.filereadable(path) then
            local url = "https://github.com/plantuml/plantuml/releases/"
            url = url .. "download/v" .. release_version .. "/" .. plantuml

            vim.fn.system("wget -O " .. path .. " "  .. url)
        end
    end,
}
