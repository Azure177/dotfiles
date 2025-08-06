
--Highlight Yank --
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup("kickstart-highlight", { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end
})

--Netrw Stuff--
vim.api.nvim_create_autocmd("Filetype", {
    pattern = "netrw",
    callback = function()
        vim.wo.number = true
        vim.wo.relativenumber = true
    end
})

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        if vim.fn.argc() == 0 then
            vim.cmd("Explore")
        end
    end
})
