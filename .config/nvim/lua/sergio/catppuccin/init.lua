local ctp_feline = require('catppuccin.groups.integrations.feline')

require("catppuccin").setup({
    flavour = "frappe",
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = false,
        treesitter = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
