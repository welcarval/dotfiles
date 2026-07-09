---@diagnostic disable-next-line: missing-fields
---@type Base46Table
local M = {}

M.base_30 = {
  white         = "#3760bf",
  darker_black  = "#c1c9df",
  black         = "#e1e2e7",
  black2        = "#d0d5e3",
  one_bg        = "#c4c8da",
  one_bg2       = "#b7c1e3",
  one_bg3       = "#a8aecb",
  grey          = "#8990b3",
  grey_fg       = "#68709a",
  grey_fg2      = "#848cb5",
  light_grey    = "#6172b0",
  red           = "#c64343",
  baby_pink     = "#d97b8c",
  pink          = "#9854f1",
  line          = "#a8aecb",
  green         = "#587539",
  vibrant_green = "#20a68f",
  nord_blue     = "#188092",
  blue          = "#2e7de9",
  seablue       = "#07879d",
  yellow        = "#8f5e15",
  sun           = "#c48a3f",
  purple        = "#7847bf",
  dark_purple   = "#9854f1",
  teal          = "#20a68f",
  orange        = "#b15c00",
  cyan          = "#007197",
  statusline_bg = "#d0d5e3",
  lightbg       = "#c4c8da",
  pmenu_bg      = "#188092",
  folder_bg     = "#2e7de9",
}

M.base_16 = {
  base00 = "#e1e2e7", base01 = "#d0d5e3", base02 = "#c4c8da", base03 = "#848cb5",
  base04 = "#6172b0", base05 = "#3760bf", base06 = "#3760bf", base07 = "#a8aecb",
  base08 = "#c64343", base09 = "#b15c00", base0A = "#8f5e15", base0B = "#587539",
  base0C = "#007197", base0D = "#2e7de9", base0E = "#7847bf", base0F = "#9854f1",
}

M.type = "light"
M = require("base46").override_theme(M, "tokyonight_day")
return M
