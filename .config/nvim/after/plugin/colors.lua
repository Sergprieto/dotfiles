--vim.g.newpaper_transparent_sidebar = true
--vim.g.newpaper_transparent = true
--vim.opt.background = "light"
--vim.opt.termguicolors = true


vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        package.loaded["feline"] = nil
        package.loaded["catppuccin.groups.integrations.feline"] = nil
        require("feline").setup {
            components = require("catppuccin.groups.integrations.feline").get(),
        }
    end,
})

