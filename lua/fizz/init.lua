-- By http://github.com/sebasruiz09
local fizz = {}

local theme = require("fizz.theme")

fizz.setup = function(user_opts)
    local defaults = {
        transparent = false,
        italic_comments = true,
        color_overrides = {},
        group_overrides = {},
        disable_nvimtree_bg = true,
    }

    local global_settings_opts = vim.tbl_extend("force", defaults, {
        transparent = (vim.g.fizz_transparent == true or vim.g.fizz_transparent == 1),
        italic_comments = (vim.g.fizz_italic_comment == true or vim.g.fizz_italic_comment == 1),
        disable_nvimtree_bg = (vim.g.fizz_disable_nvim_tree_bg == true or vim.g.fizz_disable_nvim_tree_bg == 1),
    })

    local opts = vim.tbl_extend("force", global_settings_opts, user_opts)

    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "fizz"

    theme.set_highlights(opts)
    theme.link_highlight()

    for group, val in pairs(opts["group_overrides"] or {}) do
        vim.api.nvim_set_hl(0, group, val)
    end
end

return fizz
