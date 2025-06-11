return {
    'lervag/vimtex',

    lazy = false,


    init = function ()
        vim.g.vimtex_compiler_method = "latexmk"
        vim.g.vimtex_view_method = "zathura"

        vim.g.vimtex_mappings_disable = {
            n = { 'dse', 'dsc', 'dsd', 'ds$', 'cse', 'csc', 'csd', 'cs$' }
        }
    end,

    config = function ()
        local npairs = require('nvim-autopairs')
        local Rule = require('nvim-autopairs.rule')

        npairs.add_rule(Rule("$$", "$$", "tex"))
    end,

}

