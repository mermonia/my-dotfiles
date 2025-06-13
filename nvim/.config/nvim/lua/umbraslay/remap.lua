vim.g.mapleader = " "

-- Faster commands
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { noremap=true, silent=true })

-- Fix cursor position in vertical movements
vim.keymap.set("n", "<C-d>", "<C-d>zz", {noremap = true})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {noremap = true})

vim.keymap.set("n", "<leader>r", function()
    local n = vim.fn.input("Line span (r -> global, s -> line): ")
    local pattern = vim.fn.input("Pattern: ")
    local replacement = vim.fn.input("Replacement: ")

    local cmd
    if n == "r" then
        cmd = string.format("%%s/%s/%s/g", pattern, replacement)
    elseif n == "s" then
        cmd = string.format("s/%s/%s/g", pattern, replacement)
    else
        cmd = string.format(".,+%ss/%s/%s/g", n, pattern, replacement)
    end

    vim.cmd(cmd)
end)

-- Window navigation
vim.keymap.set("n", "<leader>h", "<C-w>h");
vim.keymap.set("n", "<leader>j", "<C-w>j");
vim.keymap.set("n", "<leader>k", "<C-w>k");
vim.keymap.set("n", "<leader>l", "<C-w>l");
