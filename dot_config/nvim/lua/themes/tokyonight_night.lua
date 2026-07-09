---@diagnostic disable-next-line: missing-fields
---@type Base46Table
local M = {}

M.base_30 = {
  white         = "#c0caf5",
  darker_black  = "#0C0E14",
  black         = "#1a1b26",
  black2        = "#16161e",
  one_bg        = "#292e42",
  one_bg2       = "#283457",
  one_bg3       = "#3b4261",
  grey          = "#545c7e",
  grey_fg       = "#737aa2",
  grey_fg2      = "#565f89",
  light_grey    = "#a9b1d6",
  red           = "#f7768e",
  baby_pink     = "#ff8fa3",
  pink          = "#bb9af7",
  line          = "#3b4261",
  green         = "#9ece6a",
  vibrant_green = "#73daca",
  nord_blue     = "#2ac3de",
  blue          = "#7aa2f7",
  seablue       = "#0db9d7",
  yellow        = "#e0af68",
  sun           = "#ffdfb3",
  purple        = "#9d7cd8",
  dark_purple   = "#bb9af7",
  teal          = "#73daca",
  orange        = "#ff9e64",
  cyan          = "#7dcfff",
  statusline_bg = "#16161e",
  lightbg       = "#292e42",
  pmenu_bg      = "#2ac3de",
  folder_bg     = "#7aa2f7",
}

M.base_16 = {
  base00 = "#1a1b26", base01 = "#16161e", base02 = "#292e42", base03 = "#565f89",
  base04 = "#a9b1d6", base05 = "#c0caf5", base06 = "#c0caf5", base07 = "#3b4261",
  base08 = "#f7768e", base09 = "#ff9e64", base0A = "#e0af68", base0B = "#9ece6a",
  base0C = "#7dcfff", base0D = "#7aa2f7", base0E = "#9d7cd8", base0F = "#bb9af7",
}

M.type = "dark"
M = require("base46").override_theme(M, "tokyonight_night")
return M
