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
        local cond = require('nvim-autopairs.conds')
        local Rule = require('nvim-autopairs.rule')

        -- Incrementative approach to identical autopairs
        npairs.add_rule(Rule("$", "$", "tex"))
    end,

}

