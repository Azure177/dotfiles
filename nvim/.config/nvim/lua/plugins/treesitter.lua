
return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require 'nvim-treesitter.configs'.setup {
            ensure_installed = { "lua", "cpp", "c", "bash" },
            auto_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            autotag = { enable = true },
        }
    end
}
