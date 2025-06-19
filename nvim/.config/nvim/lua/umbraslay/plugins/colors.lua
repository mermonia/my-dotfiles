function ColorMyPencils(color)
	color = color or "lovelace"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal",        { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat",   { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC",      { bg = "none" })
	vim.api.nvim_set_hl(0, "FloatBorder",   { bg = "none" })

	vim.api.nvim_set_hl(0, "Directory",     { bg = "none" })

    vim.api.nvim_set_hl(0, "VertSplit",     { bg = "none" })
    vim.api.nvim_set_hl(0, "StatusLine",    { bg = "none" })
    vim.api.nvim_set_hl(0, "StatusLineNC",  { bg = "none" })
    vim.api.nvim_set_hl(0, "WinSeparator",  { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn",    { bg = "none" })
    vim.api.nvim_set_hl(0, "FoldColumn",    { bg = "none" })

    vim.api.nvim_set_hl(0, "CursorLine",    { bg = "#140020" })
end

return {

	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require('rose-pine').setup({
				disable_background = true,
				styles = {
					italic = false,
				},
			})

			ColorMyPencils();
		end
	},

    {
        'myxik/lovelace.nvim',
        name = 'lovelace',
        lazy = false,
        config = function()
            ColorMyPencils()
        end
    },

}
