return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        style = "storm",                  -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        transparent = true,               -- Enable this to disable setting the background color
        terminal_colors = true           -- Configure the colors used when opening a `:terminal` in Neovim  
    }
}