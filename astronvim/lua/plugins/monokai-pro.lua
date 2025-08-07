return {
  "loctvl842/monokai-pro.nvim",
  config = function()
    require("monokai-pro").setup {
      filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
      -- transparent_background = true,
      -- background_clear = {
      --   "toggleterm",
      --   "telescope",
      --   "which-key",
      --   "renamer",
      --   "notify",
      --   "nvim-tree",
      --   "neo-tree",
      --   "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
      --   "telescope",
      --   "float_win",
      -- }, -- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
    }
  end,
}
