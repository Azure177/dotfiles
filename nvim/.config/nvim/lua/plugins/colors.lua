
local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return
    {
        {
            "folke/tokyonight.nvim",
            config = function()
                vim.cmd.colorscheme "tokyonight"
                enable_transparency()
            end
        },
    }
