-- soda.lua
local M = {}

M.base_30 = {
  white = "#c4c4b5",
  black = "#191919", -- background
  darker_black = "#101010", -- 6% darker than black
  black2 = "#1f1f1f", -- 6% lighter than black
  one_bg = "#292929", -- 10% lighter than black
  one_bg2 = "#333333", -- 19% lighter than black
  one_bg3 = "#3d3d3d", -- 27% lighter than black
  grey = "#666666", -- 40% lighter than black
  grey_fg = "#737373", -- 10% lighter than grey
  grey_fg2 = "#808080", -- 20% lighter than grey
  light_grey = "#8c8c8c", -- 28% lighter than grey
  red = "#f3005f",
  baby_pink = "#ff67a1", -- 15% lighter than red
  pink = "#ff5fa3",
  line = "#2b2b2b", -- 15% lighter than black
  green = "#97e023",
  vibrant_green = "#b4f762",
  blue = "#9c64fe",
  nord_blue = "#8a5be7", -- 13% darker than blue
  yellow = "#fa8419",
  sun = "#ffd36d", -- 8% lighter than yellow
  purple = "#9c64fe",
  dark_purple = "#8a5be7", -- 13% darker than purple
  teal = "#57d1ea",
  orange = "#fa8419",
  cyan = "#57d1ea",
  statusline_bg = "#202020", -- 4% lighter than black
  lightbg = "#2d2d2d", -- 13% lighter than statusline_bg
  lightbg2 = "#252525", -- 7% lighter than statusline_bg
  pmenu_bg = "#9c64fe",
  folder_bg = "#57d1ea",
}

M.base_16 = {
  base00 = "#191919", -- background
  base01 = "#303030", -- black
  base02 = "#343434", -- selection background
  base03 = "#615e4b", -- bright black
  base04 = "#c4c4b5", -- white (normal)
  base05 = "#c4c4b5", -- foreground
  base06 = "#f6f6ec", -- cursor
  base07 = "#ffffff", -- bright white
  base08 = "#f3005f", -- red
  base09 = "#fa8419", -- orange
  base0A = "#ffd36d", -- yellow
  base0B = "#97e023", -- green
  base0C = "#57d1ea", -- cyan
  base0D = "#9c64fe", -- blue (purple)
  base0E = "#f3005f", -- purple (red?)
  base0F = "#ff67a1", -- bright purple
}

M.type = "dark" -- or "light" based on your preference

return M

