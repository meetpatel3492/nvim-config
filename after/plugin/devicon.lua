require 'nvim-web-devicons'.setup {
    color_icons = true,
    default = true,
    strict = true,
    override_by_filename = {
        [".gitignore"] = {
            icon = "",
            color = "#f1502f",
            name = "Gitignore"
        }
    },
    -- list of icons - https://devicon.dev/
    override_by_extension = {
        ["log"] = {
            icon = "",
            color = "#81e043",
            name = "Log"
        },
        ["lua"] = {
            icon = require 'nvim-web-devicons'.get_icon(filename, "lua", { default = true }),
            color = "#81e043",
            name = "Lua"
        }
    },
}
