
local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return
    {
        {
            "folke/tokyonight.nvim",
            enabled = true,
            transparent = true,
            styles = {
                comments = { fg = "#8a8a8a" },
                keywords = { fg = "#5fa9d0" },
                functions = { fg = "#7ec07e" },
                strings = { fg = "#d18f52" },
            },
            config = function()
                vim.cmd.colorscheme "tokyonight-storm"
                enable_transparency()
            end
        },
    }
