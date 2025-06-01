-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.keys.normal_mode[";"] = ":"
lvim.keys.normal_mode[":"] = ";"

lvim.plugins = {
  { "folke/tokyonight.nvim" },  -- example: Tokyo Night
  { "shaunsingh/nord.nvim" },   -- example: Nord
  {"luisiacc/gruvbox-baby" },
  {"neanias/everforest-nvim" },
}
vim.g.gruvbox_baby_function_style = "italic"
vim.g.gruvbox_baby_keyword_style = "bold"

vim.opt.background = "dark" -- or "light" if you're wild like that
lvim.colorscheme = "everforest"
lvim.transparent_window = true

vim.opt.relativenumber = true -- relative line numbers
vim.opt.wrap = true -- wrap lines
